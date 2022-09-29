; ModuleID = 'main.c'
source_filename = "main.c"

@minInf = dso_local constant i32 -2147483648, align 4
@formatstr = private unnamed_addr constant [5 x i8] c"%lf\0A\00", align 1
@array = private unnamed_addr constant [3 x [3 x i32]] [[3 x i32] [i32 5, i32 0, i32 0], [3 x i32] [i32 -100, i32 123, i32 400], [3 x i32] [i32 -3, i32 90, i32 123]], align 16

define dso_local i32 @getMaxInAscendingSequence([3 x i32]* %0, i32 %1) #0 {
  %3 = alloca [3 x i32]*, align 8 ; used for &a
  %4 = alloca i32, align 4 ; used for &threshold
  %5 = alloca i32, align 4 ; used for &maxVal
  %6 = alloca i32, align 4 ; used for &i
  %7 = alloca i32, align 4 ; used for &val
  %8 = alloca i32, align 4 ; used for &j
  store [3 x i32]* %0, [3 x i32]** %3, align 8 ; %3 = a
  store i32 %1, i32* %4, align 4 ; %4 = &threshold
  store i32 -2147483648, i32* %5, align 4 ; maxVal = minInf
  store i32 0, i32* %6, align 4 ; i = 0
  br label %9

9:
  %10 = load i32, i32* %6, align 4 ; %10 = i
  %11 = icmp slt i32 %10, 3 ; %11 = i < 3 ?
  br i1 %11, label %12, label %37

12:
  ; inside loop for
  %13 = sext i32 %10 to i64 ; %13 = i_i64
  %14 = getelementptr inbounds [3 x i32], [3 x i32]* %0, i64 %13, i64 0
  %15 = load i32, i32* %14, align 4 ; %15 = a[i][0]
  store i32 %15, i32* %7, align 4 ; val = a[i][0]
  %16 = load i32, i32* %7, align 4 ; %16 = val
  %17 = icmp sgt i32 %16, %1 ; %21 = val > threshold ?
  br i1 %17, label %35, label %18

18:
  store i32 0, i32* %8, align 4 ; j = 0
  br label %19

19:
  %20 = load i32, i32* %8, align 4 ; %20 = j
  %21 = icmp slt i32 %20, 3 ; %21 = j < 3 ?
  br i1 %21, label %22, label %35

22:
  ; inside loop while
  %23 = getelementptr inbounds [3 x i32], [3 x i32]* %0, i64 %13
  ; %23 = a + i_64
  %24 = sext i32 %20 to i64 ; %24 = j_i64
  %25 = getelementptr inbounds [3 x i32], [3 x i32]* %23, i64 0, i64 %24
  ; %25 = &a[i][j]
  %26 = load i32, i32* %25, align 4 ; %26 = a[i][j]
  store i32 %26, i32* %7, align 4 ; val = a[i][j]
  %27 = load i32, i32* %7, align 4 ; %27 = val
  %28 = icmp sgt i32 %27, %1 ; %28 = val > threshold ? 
  br i1 %28, label %35, label %29

29:
  %30 = load i32, i32* %5, align 4 ; %30 = maxVal
  %31 = icmp sgt i32 %27, %30 ; %31 = val > maxVal ? 
  br i1 %31, label %32, label %33

32:
  store i32 %27, i32* %5, align 4 ; maxVal = val
  br label %33

33:
  ; end of while
  %34 = add nsw i32 %20, 1 ; %34 = j + 1
  store i32 %34, i32* %8, align 4 ; j = j + 1
  br label %19

35:
  ; end of for
  %36 = add nsw i32 %10, 1 ; %36 = i + 1
  store i32 %36, i32* %6, align 4 ; i = i + 1
  br label %9

37:
  ; end of func
  %38 = load i32, i32* %5, align 4 ; %38 = maxVal
  ret i32 %38
}

declare i32 @printf(i8*, ...) ;print

declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) 

define dso_local void @printFloat(float %0) #0 {
  %2 = alloca float, align 4
  store float %0, float* %2, align 4 ;store var
  %3 = load float, float* %2, align 4 ;load var
  %4 = fpext float %3 to double ;var float to double
  %5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @formatstr, i64 0, i64 0), double %4) ;printf
  ret void ;void
}

define dso_local i32 @main()  {
  %1 = alloca i32, align 4
  %2 = alloca [3 x [3 x i32]], align 16 ;int array
  %3 = alloca i32, align 4 ;answer
  store i32 0, i32* %1, align 4
  %4 = bitcast [3 x [3 x i32]]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %4, i8* align 16 bitcast ([3 x [3 x i32]]* @array to i8*), i64 36, i1 false)
  %5 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %2, i64 0, i64 0
  %6 = call i32 @getMaxInAscendingSequence([3 x i32]* %5, i32 100) ;getMaxInAscendingSequence(array,100)
  store i32 %6, i32* %3, align 4 ;store answer
  %7 = load i32, i32* %3, align 4 ;load answer
  %8 = sitofp i32 %7 to float ;answer to float
  call void @printFloat(float %8) ;printFloat(answer)
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
