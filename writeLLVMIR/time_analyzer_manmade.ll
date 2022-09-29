; ModuleID = 'time_analyzer.cpp'
source_filename = "time_analyzer.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%class.MyTimer = type { %struct.timeval, %struct.timeval, double }
%struct.timeval = type { i64, i64 }

$_ZN7MyTimerC2Ev = comdat any

$_ZN7MyTimer5startEv = comdat any

$_ZN7MyTimer6finishEv = comdat any

$_ZN7MyTimer7getTimeEv = comdat any

@data = dso_local global [100000 x [3 x [3 x i32]]] zeroinitializer, align 16
@.str = private unnamed_addr constant [6 x i8] c"%.4f\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_Z13dataGeneratorv() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %7

7:                                                ; preds = %114, %0
  %8 = load i32, i32* %1, align 4
  %9 = icmp slt i32 %8, 100000
  br i1 %9, label %10, label %117

10:                                               ; preds = %7
  store i32 0, i32* %2, align 4
  br label %11

11:                                               ; preds = %110, %10
  %12 = load i32, i32* %2, align 4
  %13 = icmp slt i32 %12, 3
  br i1 %13, label %14, label %113

14:                                               ; preds = %11
  %15 = call i32 @rand() #4
  store i32 %15, i32* %3, align 4
  %16 = call i32 @rand() #4
  store i32 %16, i32* %4, align 4
  %17 = call i32 @rand() #4
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp sgt i32 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %14
  %22 = load i32, i32* %3, align 4
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %4, align 4
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* %6, align 4
  store i32 %24, i32* %4, align 4
  br label %25

25:                                               ; preds = %21, %14
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* %3, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %54

29:                                               ; preds = %25
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* %1, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [100000 x [3 x [3 x i32]]], [100000 x [3 x [3 x i32]]]* @data, i64 0, i64 %32
  %34 = load i32, i32* %2, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %33, i64 0, i64 %35
  %37 = getelementptr inbounds [3 x i32], [3 x i32]* %36, i64 0, i64 0
  store i32 %30, i32* %37, align 4
  %38 = load i32, i32* %3, align 4
  %39 = load i32, i32* %1, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [100000 x [3 x [3 x i32]]], [100000 x [3 x [3 x i32]]]* @data, i64 0, i64 %40
  %42 = load i32, i32* %2, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %41, i64 0, i64 %43
  %45 = getelementptr inbounds [3 x i32], [3 x i32]* %44, i64 0, i64 1
  store i32 %38, i32* %45, align 4
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* %1, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [100000 x [3 x [3 x i32]]], [100000 x [3 x [3 x i32]]]* @data, i64 0, i64 %48
  %50 = load i32, i32* %2, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %49, i64 0, i64 %51
  %53 = getelementptr inbounds [3 x i32], [3 x i32]* %52, i64 0, i64 2
  store i32 %46, i32* %53, align 4
  br label %109

54:                                               ; preds = %25
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* %4, align 4
  %57 = icmp sgt i32 %55, %56
  br i1 %57, label %58, label %83

58:                                               ; preds = %54
  %59 = load i32, i32* %3, align 4
  %60 = load i32, i32* %1, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [100000 x [3 x [3 x i32]]], [100000 x [3 x [3 x i32]]]* @data, i64 0, i64 %61
  %63 = load i32, i32* %2, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %62, i64 0, i64 %64
  %66 = getelementptr inbounds [3 x i32], [3 x i32]* %65, i64 0, i64 0
  store i32 %59, i32* %66, align 4
  %67 = load i32, i32* %4, align 4
  %68 = load i32, i32* %1, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [100000 x [3 x [3 x i32]]], [100000 x [3 x [3 x i32]]]* @data, i64 0, i64 %69
  %71 = load i32, i32* %2, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %70, i64 0, i64 %72
  %74 = getelementptr inbounds [3 x i32], [3 x i32]* %73, i64 0, i64 1
  store i32 %67, i32* %74, align 4
  %75 = load i32, i32* %5, align 4
  %76 = load i32, i32* %1, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [100000 x [3 x [3 x i32]]], [100000 x [3 x [3 x i32]]]* @data, i64 0, i64 %77
  %79 = load i32, i32* %2, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %78, i64 0, i64 %80
  %82 = getelementptr inbounds [3 x i32], [3 x i32]* %81, i64 0, i64 2
  store i32 %75, i32* %82, align 4
  br label %108

83:                                               ; preds = %54
  %84 = load i32, i32* %3, align 4
  %85 = load i32, i32* %1, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds [100000 x [3 x [3 x i32]]], [100000 x [3 x [3 x i32]]]* @data, i64 0, i64 %86
  %88 = load i32, i32* %2, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %87, i64 0, i64 %89
  %91 = getelementptr inbounds [3 x i32], [3 x i32]* %90, i64 0, i64 0
  store i32 %84, i32* %91, align 4
  %92 = load i32, i32* %5, align 4
  %93 = load i32, i32* %1, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds [100000 x [3 x [3 x i32]]], [100000 x [3 x [3 x i32]]]* @data, i64 0, i64 %94
  %96 = load i32, i32* %2, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %95, i64 0, i64 %97
  %99 = getelementptr inbounds [3 x i32], [3 x i32]* %98, i64 0, i64 1
  store i32 %92, i32* %99, align 4
  %100 = load i32, i32* %4, align 4
  %101 = load i32, i32* %1, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds [100000 x [3 x [3 x i32]]], [100000 x [3 x [3 x i32]]]* @data, i64 0, i64 %102
  %104 = load i32, i32* %2, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %103, i64 0, i64 %105
  %107 = getelementptr inbounds [3 x i32], [3 x i32]* %106, i64 0, i64 2
  store i32 %100, i32* %107, align 4
  br label %108

108:                                              ; preds = %83, %58
  br label %109

109:                                              ; preds = %108, %29
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* %2, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %2, align 4
  br label %11

113:                                              ; preds = %11
  br label %114

114:                                              ; preds = %113
  %115 = load i32, i32* %1, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %1, align 4
  br label %7

117:                                              ; preds = %7
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_Z25getMaxInAscendingSequencePA3_ii([3 x i32]* %0, i32 %1) #0 {
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

; Function Attrs: noinline norecurse optnone uwtable
define dso_local i32 @main() #2 {
  %1 = alloca i32, align 4
  %2 = alloca %class.MyTimer, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @srand(i32 0) #4
  call void @_Z13dataGeneratorv()
  call void @_ZN7MyTimerC2Ev(%class.MyTimer* %2)
  call void @_ZN7MyTimer5startEv(%class.MyTimer* %2)
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %23, %0
  %6 = load i32, i32* %3, align 4
  %7 = icmp slt i32 %6, 10
  br i1 %7, label %8, label %26

8:                                                ; preds = %5
  store i32 0, i32* %4, align 4
  br label %9

9:                                                ; preds = %19, %8
  %10 = load i32, i32* %4, align 4
  %11 = icmp slt i32 %10, 100000
  br i1 %11, label %12, label %22

12:                                               ; preds = %9
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [100000 x [3 x [3 x i32]]], [100000 x [3 x [3 x i32]]]* @data, i64 0, i64 %14
  %16 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %15, i64 0, i64 0
  %17 = call i32 @rand() #4
  %18 = call i32 @_Z25getMaxInAscendingSequencePA3_ii([3 x i32]* %16, i32 %17)
  br label %19

19:                                               ; preds = %12
  %20 = load i32, i32* %4, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %4, align 4
  br label %9

22:                                               ; preds = %9
  br label %23

23:                                               ; preds = %22
  %24 = load i32, i32* %3, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %3, align 4
  br label %5

26:                                               ; preds = %5
  call void @_ZN7MyTimer6finishEv(%class.MyTimer* %2)
  %27 = call double @_ZN7MyTimer7getTimeEv(%class.MyTimer* %2)
  %28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), double %27)
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local void @srand(i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN7MyTimerC2Ev(%class.MyTimer* %0) unnamed_addr #0 comdat align 2 {
  %2 = alloca %class.MyTimer*, align 8
  store %class.MyTimer* %0, %class.MyTimer** %2, align 8
  %3 = load %class.MyTimer*, %class.MyTimer** %2, align 8
  %4 = getelementptr inbounds %class.MyTimer, %class.MyTimer* %3, i32 0, i32 0
  %5 = getelementptr inbounds %class.MyTimer, %class.MyTimer* %3, i32 0, i32 1
  %6 = getelementptr inbounds %class.MyTimer, %class.MyTimer* %3, i32 0, i32 2
  store double 0.000000e+00, double* %6, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN7MyTimer5startEv(%class.MyTimer* %0) #0 comdat align 2 {
  %2 = alloca %class.MyTimer*, align 8
  store %class.MyTimer* %0, %class.MyTimer** %2, align 8
  %3 = load %class.MyTimer*, %class.MyTimer** %2, align 8
  %4 = getelementptr inbounds %class.MyTimer, %class.MyTimer* %3, i32 0, i32 0
  %5 = call i32 @gettimeofday(%struct.timeval* %4, i8* null) #4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN7MyTimer6finishEv(%class.MyTimer* %0) #0 comdat align 2 {
  %2 = alloca %class.MyTimer*, align 8
  store %class.MyTimer* %0, %class.MyTimer** %2, align 8
  %3 = load %class.MyTimer*, %class.MyTimer** %2, align 8
  %4 = getelementptr inbounds %class.MyTimer, %class.MyTimer* %3, i32 0, i32 1
  %5 = call i32 @gettimeofday(%struct.timeval* %4, i8* null) #4
  ret void
}

declare dso_local i32 @printf(i8*, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local double @_ZN7MyTimer7getTimeEv(%class.MyTimer* %0) #0 comdat align 2 {
  %2 = alloca %class.MyTimer*, align 8
  %3 = alloca double, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %class.MyTimer* %0, %class.MyTimer** %2, align 8
  %6 = load %class.MyTimer*, %class.MyTimer** %2, align 8
  store double 0.000000e+00, double* %3, align 8
  %7 = getelementptr inbounds %class.MyTimer, %class.MyTimer* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = sitofp i64 %9 to double
  %11 = fmul double %10, 1.000000e+06
  %12 = getelementptr inbounds %class.MyTimer, %class.MyTimer* %6, i32 0, i32 0
  %13 = getelementptr inbounds %struct.timeval, %struct.timeval* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = sitofp i64 %14 to double
  %16 = fadd double %11, %15
  %17 = fptosi double %16 to i64
  store i64 %17, i64* %4, align 8
  %18 = getelementptr inbounds %class.MyTimer, %class.MyTimer* %6, i32 0, i32 1
  %19 = getelementptr inbounds %struct.timeval, %struct.timeval* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = sitofp i64 %20 to double
  %22 = fmul double %21, 1.000000e+06
  %23 = getelementptr inbounds %class.MyTimer, %class.MyTimer* %6, i32 0, i32 1
  %24 = getelementptr inbounds %struct.timeval, %struct.timeval* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = sitofp i64 %25 to double
  %27 = fadd double %22, %26
  %28 = fptosi double %27 to i64
  store i64 %28, i64* %5, align 8
  %29 = load i64, i64* %5, align 8
  %30 = load i64, i64* %4, align 8
  %31 = sub nsw i64 %29, %30
  %32 = sitofp i64 %31 to double
  %33 = fdiv double %32, 1.000000e+03
  store double %33, double* %3, align 8
  %34 = load double, double* %3, align 8
  ret double %34
}

; Function Attrs: nounwind
declare dso_local i32 @gettimeofday(%struct.timeval*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noinline norecurse optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.0-4ubuntu1 "}
