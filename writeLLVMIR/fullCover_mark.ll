; ModuleID = 'fullCover.c'
source_filename = "fullCover.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@minInf = dso_local constant i32 -2147483648, align 4
@.str = private unnamed_addr constant [5 x i8] c"%lf\0A\00", align 1
@__const.main.array = private unnamed_addr constant [3 x [3 x i32]] [[3 x i32] [i32 5, i32 0, i32 0], [3 x i32] [i32 -100, i32 123, i32 400], [3 x i32] [i32 -3, i32 90, i32 123]], align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getMaxInAscendingSequence([3 x i32]* %0, i32 %1) #0 {
  %3 = alloca [3 x i32]*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store [3 x i32]* %0, [3 x i32]** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 -2147483648, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %50, %2
  %10 = load i32, i32* %6, align 4
  %11 = icmp slt i32 %10, 3
  br i1 %11, label %12, label %53

12:                                               ; preds = %9
  %13 = load [3 x i32]*, [3 x i32]** %3, align 8
  %14 = load i32, i32* %6, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 %15
  %17 = getelementptr inbounds [3 x i32], [3 x i32]* %16, i64 0, i64 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp sgt i32 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %12
  br label %50

23:                                               ; preds = %12
  store i32 0, i32* %8, align 4
  br label %24

24:                                               ; preds = %46, %23
  %25 = load i32, i32* %8, align 4
  %26 = icmp slt i32 %25, 3
  br i1 %26, label %27, label %49

27:                                               ; preds = %24
  %28 = load [3 x i32]*, [3 x i32]** %3, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [3 x i32], [3 x i32]* %28, i64 %30
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [3 x i32], [3 x i32]* %31, i64 0, i64 %33
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %4, align 4
  %38 = icmp sgt i32 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %27
  br label %49

40:                                               ; preds = %27
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* %5, align 4
  %43 = icmp sgt i32 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = load i32, i32* %7, align 4
  store i32 %45, i32* %5, align 4
  br label %46

46:                                               ; preds = %44, %40
  %47 = load i32, i32* %8, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %8, align 4
  br label %24

49:                                               ; preds = %39, %24
  br label %50

50:                                               ; preds = %49, %22
  %51 = load i32, i32* %6, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %6, align 4
  br label %9

53:                                               ; preds = %9
  %54 = load i32, i32* %5, align 4
  ret i32 %54
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloat(float %0) #0 {
  %2 = alloca float, align 4
  store float %0, float* %2, align 4
  %3 = load float, float* %2, align 4
  %4 = fpext float %3 to double
  %5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), double %4)
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [3 x [3 x i32]], align 16
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %4 = bitcast [3 x [3 x i32]]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %4, i8* align 16 bitcast ([3 x [3 x i32]]* @__const.main.array to i8*), i64 36, i1 false)
  %5 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %2, i64 0, i64 0
  %6 = call i32 @getMaxInAscendingSequence([3 x i32]* %5, i32 100)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = sitofp i32 %7 to float
  call void @printFloat(float %8)
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.0-4ubuntu1 "}
