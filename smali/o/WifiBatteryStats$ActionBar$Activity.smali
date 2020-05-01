.class final Lo/WifiBatteryStats$ActionBar$Activity;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/HealthStatsParceler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/WifiBatteryStats$ActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "Activity"
.end annotation


# instance fields
.field final synthetic a:Lo/WifiBatteryStats$ActionBar;

.field private final c:Lcom/netflix/binder/generated/BinderFragmentModule;


# direct methods
.method private constructor <init>(Lo/WifiBatteryStats$ActionBar;Lcom/netflix/binder/generated/BinderFragmentModule;)V
    .locals 0

    .line 811
    iput-object p1, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 812
    iput-object p2, p0, Lo/WifiBatteryStats$ActionBar$Activity;->c:Lcom/netflix/binder/generated/BinderFragmentModule;

    return-void
.end method

.method synthetic constructor <init>(Lo/WifiBatteryStats$ActionBar;Lcom/netflix/binder/generated/BinderFragmentModule;Lo/WifiBatteryStats$5;)V
    .locals 0

    .line 808
    invoke-direct {p0, p1, p2}, Lo/WifiBatteryStats$ActionBar$Activity;-><init>(Lo/WifiBatteryStats$ActionBar;Lcom/netflix/binder/generated/BinderFragmentModule;)V

    return-void
.end method

.method private A()Lo/InputMethodManager;
    .locals 2

    .line 894
    new-instance v0, Lo/InputMethodManager;

    iget-object v1, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v1}, Lo/WifiBatteryStats$ActionBar;->i(Lo/WifiBatteryStats$ActionBar;)Lo/InputMethodSession;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/InputMethodManager;-><init>(Lo/InputMethodSession;)V

    return-object v0
.end method

.method private B()Lo/Patterns;
    .locals 14

    .line 904
    new-instance v13, Lo/Patterns;

    iget-object v0, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v0}, Lo/WifiBatteryStats$ActionBar;->c(Lo/WifiBatteryStats$ActionBar;)Lcom/netflix/android/moneyball/FlowMode;

    move-result-object v1

    iget-object v0, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v0}, Lo/WifiBatteryStats$ActionBar;->e(Lo/WifiBatteryStats$ActionBar;)Lo/SystemTextClassifier;

    move-result-object v2

    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar$Activity;->m()Lo/ParagraphStyle;

    move-result-object v3

    iget-object v0, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v0}, Lo/WifiBatteryStats$ActionBar;->a(Lo/WifiBatteryStats$ActionBar;)Lo/TextClassifierImpl;

    move-result-object v4

    iget-object v0, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v0}, Lo/WifiBatteryStats$ActionBar;->b(Lo/WifiBatteryStats$ActionBar;)Lo/TextClassificationManager;

    move-result-object v5

    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar$Activity;->e()Lo/InputBinding;

    move-result-object v6

    iget-object v0, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    iget-object v0, v0, Lo/WifiBatteryStats$ActionBar;->a:Lo/WifiBatteryStats;

    invoke-static {v0}, Lo/WifiBatteryStats;->b(Lo/WifiBatteryStats;)Lo/StrikethroughSpan;

    move-result-object v7

    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar$Activity;->o()Lo/DrawableMarginSpan;

    move-result-object v8

    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar$Activity;->n()Lo/NotificationRankingUpdate;

    move-result-object v9

    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar$Activity;->a()Lo/SuggestionService;

    move-result-object v10

    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar$Activity;->l()Lo/BackgroundColorSpan;

    move-result-object v11

    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar$Activity;->s()Lo/HideReturnsTransformationMethod;

    move-result-object v12

    move-object v0, v13

    invoke-direct/range {v0 .. v12}, Lo/Patterns;-><init>(Lcom/netflix/android/moneyball/FlowMode;Lo/SystemTextClassifier;Lo/ParagraphStyle;Lo/TextClassifierImpl;Lo/TextClassificationManager;Lo/InputBinding;Lo/Deprecated$ActionBar;Lo/DrawableMarginSpan;Lo/NotificationRankingUpdate;Lo/SuggestionService;Lo/BackgroundColorSpan;Lo/HideReturnsTransformationMethod;)V

    return-object v13
.end method

.method private C()Lo/SpannedString;
    .locals 4

    .line 897
    new-instance v0, Lo/SpannedString;

    iget-object v1, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v1}, Lo/WifiBatteryStats$ActionBar;->c(Lo/WifiBatteryStats$ActionBar;)Lcom/netflix/android/moneyball/FlowMode;

    move-result-object v1

    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar$Activity;->A()Lo/InputMethodManager;

    move-result-object v2

    iget-object v3, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v3}, Lo/WifiBatteryStats$ActionBar;->e(Lo/WifiBatteryStats$ActionBar;)Lo/SystemTextClassifier;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lo/SpannedString;-><init>(Lcom/netflix/android/moneyball/FlowMode;Lo/InputMethodManager;Lo/SystemTextClassifier;)V

    return-object v0
.end method

.method private D()Lo/MutableLong;
    .locals 13

    .line 900
    new-instance v12, Lo/MutableLong;

    iget-object v0, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v0}, Lo/WifiBatteryStats$ActionBar;->c(Lo/WifiBatteryStats$ActionBar;)Lcom/netflix/android/moneyball/FlowMode;

    move-result-object v1

    iget-object v0, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v0}, Lo/WifiBatteryStats$ActionBar;->e(Lo/WifiBatteryStats$ActionBar;)Lo/SystemTextClassifier;

    move-result-object v2

    iget-object v0, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v0}, Lo/WifiBatteryStats$ActionBar;->a(Lo/WifiBatteryStats$ActionBar;)Lo/TextClassifierImpl;

    move-result-object v3

    iget-object v0, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v0}, Lo/WifiBatteryStats$ActionBar;->b(Lo/WifiBatteryStats$ActionBar;)Lo/TextClassificationManager;

    move-result-object v4

    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar$Activity;->e()Lo/InputBinding;

    move-result-object v5

    iget-object v0, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    iget-object v0, v0, Lo/WifiBatteryStats$ActionBar;->a:Lo/WifiBatteryStats;

    invoke-static {v0}, Lo/WifiBatteryStats;->b(Lo/WifiBatteryStats;)Lo/StrikethroughSpan;

    move-result-object v6

    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar$Activity;->o()Lo/DrawableMarginSpan;

    move-result-object v7

    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar$Activity;->n()Lo/NotificationRankingUpdate;

    move-result-object v8

    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar$Activity;->p()Lo/ScaleXSpan;

    move-result-object v9

    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar$Activity;->a()Lo/SuggestionService;

    move-result-object v10

    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar$Activity;->C()Lo/SpannedString;

    move-result-object v11

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Lo/MutableLong;-><init>(Lcom/netflix/android/moneyball/FlowMode;Lo/SystemTextClassifier;Lo/TextClassifierImpl;Lo/TextClassificationManager;Lo/InputBinding;Lo/Deprecated$ActionBar;Lo/DrawableMarginSpan;Lo/NotificationRankingUpdate;Lo/ScaleXSpan;Lo/SuggestionService;Lo/SpannedString;)V

    return-object v12
.end method

.method private E()Lo/TextClassifierImplNative;
    .locals 5

    .line 916
    new-instance v0, Lo/TextClassifierImplNative;

    iget-object v1, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v1}, Lo/WifiBatteryStats$ActionBar;->j(Lo/WifiBatteryStats$ActionBar;)Lo/SpellCheckerSubtype;

    move-result-object v1

    iget-object v2, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v2}, Lo/WifiBatteryStats$ActionBar;->e(Lo/WifiBatteryStats$ActionBar;)Lo/SystemTextClassifier;

    move-result-object v2

    iget-object v3, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v3}, Lo/WifiBatteryStats$ActionBar;->h(Lo/WifiBatteryStats$ActionBar;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v4}, Lo/WifiBatteryStats$ActionBar;->f(Lo/WifiBatteryStats$ActionBar;)Lo/SpellCheckerInfo;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lo/TextClassifierImplNative;-><init>(Lo/SpellCheckerSubtype;Lo/SystemTextClassifier;Ljava/util/ArrayList;Lo/SpellCheckerInfo;)V

    return-object v0
.end method

.method private F()Lo/SparseSetArray;
    .locals 10

    .line 913
    new-instance v9, Lo/SparseSetArray;

    iget-object v0, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v0}, Lo/WifiBatteryStats$ActionBar;->c(Lo/WifiBatteryStats$ActionBar;)Lcom/netflix/android/moneyball/FlowMode;

    move-result-object v1

    iget-object v0, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v0}, Lo/WifiBatteryStats$ActionBar;->e(Lo/WifiBatteryStats$ActionBar;)Lo/SystemTextClassifier;

    move-result-object v2

    iget-object v0, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v0}, Lo/WifiBatteryStats$ActionBar;->a(Lo/WifiBatteryStats$ActionBar;)Lo/TextClassifierImpl;

    move-result-object v3

    iget-object v0, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v0}, Lo/WifiBatteryStats$ActionBar;->b(Lo/WifiBatteryStats$ActionBar;)Lo/TextClassificationManager;

    move-result-object v4

    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar$Activity;->e()Lo/InputBinding;

    move-result-object v5

    iget-object v0, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    iget-object v0, v0, Lo/WifiBatteryStats$ActionBar;->a:Lo/WifiBatteryStats;

    invoke-static {v0}, Lo/WifiBatteryStats;->b(Lo/WifiBatteryStats;)Lo/StrikethroughSpan;

    move-result-object v6

    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar$Activity;->a()Lo/SuggestionService;

    move-result-object v7

    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar$Activity;->i()Lo/Voice;

    move-result-object v8

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lo/SparseSetArray;-><init>(Lcom/netflix/android/moneyball/FlowMode;Lo/SystemTextClassifier;Lo/TextClassifierImpl;Lo/TextClassificationManager;Lo/InputBinding;Lo/Deprecated$ActionBar;Lo/SuggestionService;Lo/Voice;)V

    return-object v9
.end method

.method private G()Lo/ApkSigningBlockUtils;
    .locals 8

    .line 922
    new-instance v7, Lo/ApkSigningBlockUtils;

    iget-object v0, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v0}, Lo/WifiBatteryStats$ActionBar;->c(Lo/WifiBatteryStats$ActionBar;)Lcom/netflix/android/moneyball/FlowMode;

    move-result-object v1

    iget-object v0, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v0}, Lo/WifiBatteryStats$ActionBar;->e(Lo/WifiBatteryStats$ActionBar;)Lo/SystemTextClassifier;

    move-result-object v2

    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar$Activity;->e()Lo/InputBinding;

    move-result-object v3

    iget-object v0, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v0}, Lo/WifiBatteryStats$ActionBar;->a(Lo/WifiBatteryStats$ActionBar;)Lo/TextClassifierImpl;

    move-result-object v4

    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar$Activity;->a()Lo/SuggestionService;

    move-result-object v5

    iget-object v0, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    iget-object v0, v0, Lo/WifiBatteryStats$ActionBar;->a:Lo/WifiBatteryStats;

    invoke-static {v0}, Lo/WifiBatteryStats;->b(Lo/WifiBatteryStats;)Lo/StrikethroughSpan;

    move-result-object v6

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lo/ApkSigningBlockUtils;-><init>(Lcom/netflix/android/moneyball/FlowMode;Lo/SystemTextClassifier;Lo/InputBinding;Lo/TextClassifierImpl;Lo/SuggestionService;Lo/Deprecated$ActionBar;)V

    return-object v7
.end method

.method private H()Lo/TypedValue;
    .locals 8

    .line 919
    new-instance v7, Lo/TypedValue;

    iget-object v0, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v0}, Lo/WifiBatteryStats$ActionBar;->c(Lo/WifiBatteryStats$ActionBar;)Lcom/netflix/android/moneyball/FlowMode;

    move-result-object v1

    iget-object v0, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v0}, Lo/WifiBatteryStats$ActionBar;->e(Lo/WifiBatteryStats$ActionBar;)Lo/SystemTextClassifier;

    move-result-object v2

    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar$Activity;->e()Lo/InputBinding;

    move-result-object v3

    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar$Activity;->E()Lo/TextClassifierImplNative;

    move-result-object v4

    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar$Activity;->a()Lo/SuggestionService;

    move-result-object v5

    iget-object v0, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    iget-object v0, v0, Lo/WifiBatteryStats$ActionBar;->a:Lo/WifiBatteryStats;

    invoke-static {v0}, Lo/WifiBatteryStats;->b(Lo/WifiBatteryStats;)Lo/StrikethroughSpan;

    move-result-object v6

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lo/TypedValue;-><init>(Lcom/netflix/android/moneyball/FlowMode;Lo/SystemTextClassifier;Lo/InputBinding;Lo/TextClassifierImplNative;Lo/SuggestionService;Lo/Deprecated$ActionBar;)V

    return-object v7
.end method

.method private I()Lo/Rational;
    .locals 9

    .line 910
    new-instance v8, Lo/Rational;

    iget-object v0, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v0}, Lo/WifiBatteryStats$ActionBar;->c(Lo/WifiBatteryStats$ActionBar;)Lcom/netflix/android/moneyball/FlowMode;

    move-result-object v1

    iget-object v0, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v0}, Lo/WifiBatteryStats$ActionBar;->e(Lo/WifiBatteryStats$ActionBar;)Lo/SystemTextClassifier;

    move-result-object v2

    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar$Activity;->e()Lo/InputBinding;

    move-result-object v3

    iget-object v0, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v0}, Lo/WifiBatteryStats$ActionBar;->a(Lo/WifiBatteryStats$ActionBar;)Lo/TextClassifierImpl;

    move-result-object v4

    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar$Activity;->a()Lo/SuggestionService;

    move-result-object v5

    iget-object v0, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    iget-object v0, v0, Lo/WifiBatteryStats$ActionBar;->a:Lo/WifiBatteryStats;

    invoke-static {v0}, Lo/WifiBatteryStats;->b(Lo/WifiBatteryStats;)Lo/StrikethroughSpan;

    move-result-object v6

    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar$Activity;->z()Lo/CharacterPickerDialog;

    move-result-object v7

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lo/Rational;-><init>(Lcom/netflix/android/moneyball/FlowMode;Lo/SystemTextClassifier;Lo/InputBinding;Lo/TextClassifierImpl;Lo/SuggestionService;Lo/Deprecated$ActionBar;Lo/CharacterPickerDialog;)V

    return-object v8
.end method

.method private J()Lo/StrictJarManifest;
    .locals 13

    .line 928
    new-instance v12, Lo/StrictJarManifest;

    iget-object v0, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v0}, Lo/WifiBatteryStats$ActionBar;->c(Lo/WifiBatteryStats$ActionBar;)Lcom/netflix/android/moneyball/FlowMode;

    move-result-object v1

    iget-object v0, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v0}, Lo/WifiBatteryStats$ActionBar;->e(Lo/WifiBatteryStats$ActionBar;)Lo/SystemTextClassifier;

    move-result-object v2

    iget-object v0, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v0}, Lo/WifiBatteryStats$ActionBar;->a(Lo/WifiBatteryStats$ActionBar;)Lo/TextClassifierImpl;

    move-result-object v3

    iget-object v0, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v0}, Lo/WifiBatteryStats$ActionBar;->b(Lo/WifiBatteryStats$ActionBar;)Lo/TextClassificationManager;

    move-result-object v4

    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar$Activity;->e()Lo/InputBinding;

    move-result-object v5

    iget-object v0, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    iget-object v0, v0, Lo/WifiBatteryStats$ActionBar;->a:Lo/WifiBatteryStats;

    invoke-static {v0}, Lo/WifiBatteryStats;->b(Lo/WifiBatteryStats;)Lo/StrikethroughSpan;

    move-result-object v6

    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar$Activity;->o()Lo/DrawableMarginSpan;

    move-result-object v7

    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar$Activity;->a()Lo/SuggestionService;

    move-result-object v8

    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar$Activity;->i()Lo/Voice;

    move-result-object v9

    iget-object v0, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v0}, Lo/WifiBatteryStats$ActionBar;->n(Lo/WifiBatteryStats$ActionBar;)Lo/TextLinksParams;

    move-result-object v10

    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar$Activity;->N()Lo/DataDigester;

    move-result-object v11

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Lo/StrictJarManifest;-><init>(Lcom/netflix/android/moneyball/FlowMode;Lo/SystemTextClassifier;Lo/TextClassifierImpl;Lo/TextClassificationManager;Lo/InputBinding;Lo/Deprecated$ActionBar;Lo/DrawableMarginSpan;Lo/SuggestionService;Lo/Voice;Lo/TextLinksParams;Lo/DataDigester;)V

    return-object v12
.end method

.method private K()Lo/AbsSavedState;
    .locals 10

    .line 935
    new-instance v9, Lo/AbsSavedState;

    iget-object v0, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v0}, Lo/WifiBatteryStats$ActionBar;->c(Lo/WifiBatteryStats$ActionBar;)Lcom/netflix/android/moneyball/FlowMode;

    move-result-object v1

    iget-object v0, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v0}, Lo/WifiBatteryStats$ActionBar;->e(Lo/WifiBatteryStats$ActionBar;)Lo/SystemTextClassifier;

    move-result-object v2

    iget-object v0, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v0}, Lo/WifiBatteryStats$ActionBar;->a(Lo/WifiBatteryStats$ActionBar;)Lo/TextClassifierImpl;

    move-result-object v3

    iget-object v0, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v0}, Lo/WifiBatteryStats$ActionBar;->b(Lo/WifiBatteryStats$ActionBar;)Lo/TextClassificationManager;

    move-result-object v4

    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar$Activity;->e()Lo/InputBinding;

    move-result-object v5

    iget-object v0, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    iget-object v0, v0, Lo/WifiBatteryStats$ActionBar;->a:Lo/WifiBatteryStats;

    invoke-static {v0}, Lo/WifiBatteryStats;->b(Lo/WifiBatteryStats;)Lo/StrikethroughSpan;

    move-result-object v6

    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar$Activity;->a()Lo/SuggestionService;

    move-result-object v7

    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar$Activity;->i()Lo/Voice;

    move-result-object v8

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lo/AbsSavedState;-><init>(Lcom/netflix/android/moneyball/FlowMode;Lo/SystemTextClassifier;Lo/TextClassifierImpl;Lo/TextClassificationManager;Lo/InputBinding;Lo/Deprecated$ActionBar;Lo/SuggestionService;Lo/Voice;)V

    return-object v9
.end method

.method private L()Lo/StrictJarVerifier;
    .locals 10

    .line 931
    new-instance v9, Lo/StrictJarVerifier;

    iget-object v0, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v0}, Lo/WifiBatteryStats$ActionBar;->c(Lo/WifiBatteryStats$ActionBar;)Lcom/netflix/android/moneyball/FlowMode;

    move-result-object v1

    iget-object v0, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v0}, Lo/WifiBatteryStats$ActionBar;->e(Lo/WifiBatteryStats$ActionBar;)Lo/SystemTextClassifier;

    move-result-object v2

    iget-object v0, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v0}, Lo/WifiBatteryStats$ActionBar;->a(Lo/WifiBatteryStats$ActionBar;)Lo/TextClassifierImpl;

    move-result-object v3

    iget-object v0, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v0}, Lo/WifiBatteryStats$ActionBar;->b(Lo/WifiBatteryStats$ActionBar;)Lo/TextClassificationManager;

    move-result-object v4

    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar$Activity;->e()Lo/InputBinding;

    move-result-object v5

    iget-object v0, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    iget-object v0, v0, Lo/WifiBatteryStats$ActionBar;->a:Lo/WifiBatteryStats;

    invoke-static {v0}, Lo/WifiBatteryStats;->b(Lo/WifiBatteryStats;)Lo/StrikethroughSpan;

    move-result-object v6

    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar$Activity;->a()Lo/SuggestionService;

    move-result-object v7

    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar$Activity;->i()Lo/Voice;

    move-result-object v8

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lo/StrictJarVerifier;-><init>(Lcom/netflix/android/moneyball/FlowMode;Lo/SystemTextClassifier;Lo/TextClassifierImpl;Lo/TextClassificationManager;Lo/InputBinding;Lo/Deprecated$ActionBar;Lo/SuggestionService;Lo/Voice;)V

    return-object v9
.end method

.method private M()Lo/Touch;
    .locals 5

    .line 938
    new-instance v0, Lo/Touch;

    iget-object v1, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v1}, Lo/WifiBatteryStats$ActionBar;->c(Lo/WifiBatteryStats$ActionBar;)Lcom/netflix/android/moneyball/FlowMode;

    move-result-object v1

    iget-object v2, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v2}, Lo/WifiBatteryStats$ActionBar;->e(Lo/WifiBatteryStats$ActionBar;)Lo/SystemTextClassifier;

    move-result-object v2

    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar$Activity;->e()Lo/InputBinding;

    move-result-object v3

    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar$Activity;->v()Lo/SentenceSuggestionsInfo;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lo/Touch;-><init>(Lcom/netflix/android/moneyball/FlowMode;Lo/SystemTextClassifier;Lo/InputBinding;Lo/SentenceSuggestionsInfo;)V

    return-object v0
.end method

.method private N()Lo/DataDigester;
    .locals 4

    .line 925
    new-instance v0, Lo/DataDigester;

    iget-object v1, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v1}, Lo/WifiBatteryStats$ActionBar;->c(Lo/WifiBatteryStats$ActionBar;)Lcom/netflix/android/moneyball/FlowMode;

    move-result-object v1

    iget-object v2, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v2}, Lo/WifiBatteryStats$ActionBar;->e(Lo/WifiBatteryStats$ActionBar;)Lo/SystemTextClassifier;

    move-result-object v2

    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar$Activity;->e()Lo/InputBinding;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lo/DataDigester;-><init>(Lcom/netflix/android/moneyball/FlowMode;Lo/SystemTextClassifier;Lo/InputBinding;)V

    return-object v0
.end method

.method private O()Lo/TextClassificationConstants;
    .locals 2

    .line 944
    new-instance v0, Lo/TextClassificationConstants;

    iget-object v1, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v1}, Lo/WifiBatteryStats$ActionBar;->b(Lo/WifiBatteryStats$ActionBar;)Lo/TextClassificationManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/TextClassificationConstants;-><init>(Lo/TextClassificationManager;)V

    return-object v0
.end method

.method private P()Lo/InputQueue;
    .locals 5

    .line 950
    new-instance v0, Lo/InputQueue;

    iget-object v1, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v1}, Lo/WifiBatteryStats$ActionBar;->c(Lo/WifiBatteryStats$ActionBar;)Lcom/netflix/android/moneyball/FlowMode;

    move-result-object v1

    iget-object v2, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v2}, Lo/WifiBatteryStats$ActionBar;->e(Lo/WifiBatteryStats$ActionBar;)Lo/SystemTextClassifier;

    move-result-object v2

    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar$Activity;->e()Lo/InputBinding;

    move-result-object v3

    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar$Activity;->o()Lo/DrawableMarginSpan;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lo/InputQueue;-><init>(Lcom/netflix/android/moneyball/FlowMode;Lo/SystemTextClassifier;Lo/InputBinding;Lo/DrawableMarginSpan;)V

    return-object v0
.end method

.method private Q()Lo/FallbackEventHandler;
    .locals 9

    .line 941
    new-instance v8, Lo/FallbackEventHandler;

    iget-object v0, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v0}, Lo/WifiBatteryStats$ActionBar;->c(Lo/WifiBatteryStats$ActionBar;)Lcom/netflix/android/moneyball/FlowMode;

    move-result-object v1

    iget-object v0, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v0}, Lo/WifiBatteryStats$ActionBar;->e(Lo/WifiBatteryStats$ActionBar;)Lo/SystemTextClassifier;

    move-result-object v2

    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar$Activity;->e()Lo/InputBinding;

    move-result-object v3

    iget-object v0, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    iget-object v0, v0, Lo/WifiBatteryStats$ActionBar;->a:Lo/WifiBatteryStats;

    invoke-static {v0}, Lo/WifiBatteryStats;->b(Lo/WifiBatteryStats;)Lo/StrikethroughSpan;

    move-result-object v4

    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar$Activity;->o()Lo/DrawableMarginSpan;

    move-result-object v5

    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar$Activity;->a()Lo/SuggestionService;

    move-result-object v6

    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar$Activity;->M()Lo/Touch;

    move-result-object v7

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lo/FallbackEventHandler;-><init>(Lcom/netflix/android/moneyball/FlowMode;Lo/SystemTextClassifier;Lo/InputBinding;Lo/Deprecated$ActionBar;Lo/DrawableMarginSpan;Lo/SuggestionService;Lo/Touch;)V

    return-object v8
.end method

.method private R()Lo/RemoteAnimationAdapter;
    .locals 4

    .line 953
    new-instance v0, Lo/RemoteAnimationAdapter;

    iget-object v1, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v1}, Lo/WifiBatteryStats$ActionBar;->c(Lo/WifiBatteryStats$ActionBar;)Lcom/netflix/android/moneyball/FlowMode;

    move-result-object v1

    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar$Activity;->e()Lo/InputBinding;

    move-result-object v2

    iget-object v3, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v3}, Lo/WifiBatteryStats$ActionBar;->e(Lo/WifiBatteryStats$ActionBar;)Lo/SystemTextClassifier;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lo/RemoteAnimationAdapter;-><init>(Lcom/netflix/android/moneyball/FlowMode;Lo/InputBinding;Lo/SystemTextClassifier;)V

    return-object v0
.end method

.method private S()Lo/FocusFinderHelper;
    .locals 14

    .line 947
    new-instance v13, Lo/FocusFinderHelper;

    iget-object v0, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v0}, Lo/WifiBatteryStats$ActionBar;->c(Lo/WifiBatteryStats$ActionBar;)Lcom/netflix/android/moneyball/FlowMode;

    move-result-object v1

    iget-object v0, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v0}, Lo/WifiBatteryStats$ActionBar;->e(Lo/WifiBatteryStats$ActionBar;)Lo/SystemTextClassifier;

    move-result-object v2

    iget-object v0, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v0}, Lo/WifiBatteryStats$ActionBar;->a(Lo/WifiBatteryStats$ActionBar;)Lo/TextClassifierImpl;

    move-result-object v3

    iget-object v0, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v0}, Lo/WifiBatteryStats$ActionBar;->b(Lo/WifiBatteryStats$ActionBar;)Lo/TextClassificationManager;

    move-result-object v4

    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar$Activity;->e()Lo/InputBinding;

    move-result-object v5

    iget-object v0, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    iget-object v0, v0, Lo/WifiBatteryStats$ActionBar;->a:Lo/WifiBatteryStats;

    invoke-static {v0}, Lo/WifiBatteryStats;->b(Lo/WifiBatteryStats;)Lo/StrikethroughSpan;

    move-result-object v6

    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar$Activity;->o()Lo/DrawableMarginSpan;

    move-result-object v7

    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar$Activity;->n()Lo/NotificationRankingUpdate;

    move-result-object v8

    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar$Activity;->p()Lo/ScaleXSpan;

    move-result-object v9

    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar$Activity;->a()Lo/SuggestionService;

    move-result-object v10

    iget-object v0, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    iget-object v0, v0, Lo/WifiBatteryStats$ActionBar;->a:Lo/WifiBatteryStats;

    invoke-static {v0}, Lo/WifiBatteryStats;->j(Lo/WifiBatteryStats;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar$Activity;->i()Lo/Voice;

    move-result-object v12

    move-object v0, v13

    invoke-direct/range {v0 .. v12}, Lo/FocusFinderHelper;-><init>(Lcom/netflix/android/moneyball/FlowMode;Lo/SystemTextClassifier;Lo/TextClassifierImpl;Lo/TextClassificationManager;Lo/InputBinding;Lo/Deprecated$ActionBar;Lo/DrawableMarginSpan;Lo/NotificationRankingUpdate;Lo/ScaleXSpan;Lo/SuggestionService;Ljava/lang/String;Lo/Voice;)V

    return-object v13
.end method

.method private T()Lo/ViewHierarchyEncoder;
    .locals 5

    .line 959
    new-instance v0, Lo/ViewHierarchyEncoder;

    iget-object v1, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v1}, Lo/WifiBatteryStats$ActionBar;->c(Lo/WifiBatteryStats$ActionBar;)Lcom/netflix/android/moneyball/FlowMode;

    move-result-object v1

    iget-object v2, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v2}, Lo/WifiBatteryStats$ActionBar;->e(Lo/WifiBatteryStats$ActionBar;)Lo/SystemTextClassifier;

    move-result-object v2

    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar$Activity;->e()Lo/InputBinding;

    move-result-object v3

    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar$Activity;->o()Lo/DrawableMarginSpan;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lo/ViewHierarchyEncoder;-><init>(Lcom/netflix/android/moneyball/FlowMode;Lo/SystemTextClassifier;Lo/InputBinding;Lo/DrawableMarginSpan;)V

    return-object v0
.end method

.method private U()Lo/InputEventSender;
    .locals 13

    .line 956
    new-instance v12, Lo/InputEventSender;

    iget-object v0, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v0}, Lo/WifiBatteryStats$ActionBar;->c(Lo/WifiBatteryStats$ActionBar;)Lcom/netflix/android/moneyball/FlowMode;

    move-result-object v1

    iget-object v0, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v0}, Lo/WifiBatteryStats$ActionBar;->e(Lo/WifiBatteryStats$ActionBar;)Lo/SystemTextClassifier;

    move-result-object v2

    iget-object v0, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v0}, Lo/WifiBatteryStats$ActionBar;->a(Lo/WifiBatteryStats$ActionBar;)Lo/TextClassifierImpl;

    move-result-object v3

    iget-object v0, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v0}, Lo/WifiBatteryStats$ActionBar;->b(Lo/WifiBatteryStats$ActionBar;)Lo/TextClassificationManager;

    move-result-object v4

    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar$Activity;->e()Lo/InputBinding;

    move-result-object v5

    iget-object v0, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    iget-object v0, v0, Lo/WifiBatteryStats$ActionBar;->a:Lo/WifiBatteryStats;

    invoke-static {v0}, Lo/WifiBatteryStats;->b(Lo/WifiBatteryStats;)Lo/StrikethroughSpan;

    move-result-object v6

    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar$Activity;->o()Lo/DrawableMarginSpan;

    move-result-object v7

    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar$Activity;->p()Lo/ScaleXSpan;

    move-result-object v8

    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar$Activity;->a()Lo/SuggestionService;

    move-result-object v9

    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar$Activity;->q()Lo/InflateException;

    move-result-object v10

    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar$Activity;->R()Lo/RemoteAnimationAdapter;

    move-result-object v11

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Lo/InputEventSender;-><init>(Lcom/netflix/android/moneyball/FlowMode;Lo/SystemTextClassifier;Lo/TextClassifierImpl;Lo/TextClassificationManager;Lo/InputBinding;Lo/Deprecated$ActionBar;Lo/DrawableMarginSpan;Lo/ScaleXSpan;Lo/SuggestionService;Lo/InflateException;Lo/RemoteAnimationAdapter;)V

    return-object v12
.end method

.method private V()Lo/SurfaceHolder;
    .locals 4

    .line 962
    new-instance v0, Lo/SurfaceHolder;

    iget-object v1, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v1}, Lo/WifiBatteryStats$ActionBar;->c(Lo/WifiBatteryStats$ActionBar;)Lcom/netflix/android/moneyball/FlowMode;

    move-result-object v1

    iget-object v2, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v2}, Lo/WifiBatteryStats$ActionBar;->e(Lo/WifiBatteryStats$ActionBar;)Lo/SystemTextClassifier;

    move-result-object v2

    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar$Activity;->e()Lo/InputBinding;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lo/SurfaceHolder;-><init>(Lcom/netflix/android/moneyball/FlowMode;Lo/SystemTextClassifier;Lo/InputBinding;)V

    return-object v0
.end method

.method private W()Lo/ThreadedRenderer;
    .locals 13

    .line 965
    new-instance v12, Lo/ThreadedRenderer;

    iget-object v0, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v0}, Lo/WifiBatteryStats$ActionBar;->c(Lo/WifiBatteryStats$ActionBar;)Lcom/netflix/android/moneyball/FlowMode;

    move-result-object v1

    iget-object v0, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v0}, Lo/WifiBatteryStats$ActionBar;->e(Lo/WifiBatteryStats$ActionBar;)Lo/SystemTextClassifier;

    move-result-object v2

    iget-object v0, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v0}, Lo/WifiBatteryStats$ActionBar;->a(Lo/WifiBatteryStats$ActionBar;)Lo/TextClassifierImpl;

    move-result-object v3

    iget-object v0, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v0}, Lo/WifiBatteryStats$ActionBar;->b(Lo/WifiBatteryStats$ActionBar;)Lo/TextClassificationManager;

    move-result-object v4

    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar$Activity;->e()Lo/InputBinding;

    move-result-object v5

    iget-object v0, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    iget-object v0, v0, Lo/WifiBatteryStats$ActionBar;->a:Lo/WifiBatteryStats;

    invoke-static {v0}, Lo/WifiBatteryStats;->b(Lo/WifiBatteryStats;)Lo/StrikethroughSpan;

    move-result-object v6

    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar$Activity;->o()Lo/DrawableMarginSpan;

    move-result-object v7

    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar$Activity;->p()Lo/ScaleXSpan;

    move-result-object v8

    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar$Activity;->a()Lo/SuggestionService;

    move-result-object v9

    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar$Activity;->V()Lo/SurfaceHolder;

    move-result-object v10

    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar$Activity;->C()Lo/SpannedString;

    move-result-object v11

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Lo/ThreadedRenderer;-><init>(Lcom/netflix/android/moneyball/FlowMode;Lo/SystemTextClassifier;Lo/TextClassifierImpl;Lo/TextClassificationManager;Lo/InputBinding;Lo/Deprecated$ActionBar;Lo/DrawableMarginSpan;Lo/ScaleXSpan;Lo/SuggestionService;Lo/SurfaceHolder;Lo/SpannedString;)V

    return-object v12
.end method

.method private X()Lo/SpannableStringInternal;
    .locals 2

    .line 968
    new-instance v0, Lo/SpannableStringInternal;

    iget-object v1, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v1}, Lo/WifiBatteryStats$ActionBar;->g(Lo/WifiBatteryStats$ActionBar;)Lo/GateKeeperResponse;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/SpannableStringInternal;-><init>(Lo/GateKeeperResponse;)V

    return-object v0
.end method

.method private Y()Lo/WindowManagerImpl;
    .locals 5

    .line 975
    new-instance v0, Lo/WindowManagerImpl;

    iget-object v1, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v1}, Lo/WifiBatteryStats$ActionBar;->c(Lo/WifiBatteryStats$ActionBar;)Lcom/netflix/android/moneyball/FlowMode;

    move-result-object v1

    iget-object v2, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v2}, Lo/WifiBatteryStats$ActionBar;->e(Lo/WifiBatteryStats$ActionBar;)Lo/SystemTextClassifier;

    move-result-object v2

    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar$Activity;->e()Lo/InputBinding;

    move-result-object v3

    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar$Activity;->o()Lo/DrawableMarginSpan;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lo/WindowManagerImpl;-><init>(Lcom/netflix/android/moneyball/FlowMode;Lo/SystemTextClassifier;Lo/InputBinding;Lo/DrawableMarginSpan;)V

    return-object v0
.end method

.method private Z()Lo/ViewStub;
    .locals 9

    .line 971
    new-instance v8, Lo/ViewStub;

    iget-object v0, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v0}, Lo/WifiBatteryStats$ActionBar;->c(Lo/WifiBatteryStats$ActionBar;)Lcom/netflix/android/moneyball/FlowMode;

    move-result-object v1

    iget-object v0, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v0}, Lo/WifiBatteryStats$ActionBar;->e(Lo/WifiBatteryStats$ActionBar;)Lo/SystemTextClassifier;

    move-result-object v2

    iget-object v0, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v0}, Lo/WifiBatteryStats$ActionBar;->a(Lo/WifiBatteryStats$ActionBar;)Lo/TextClassifierImpl;

    move-result-object v3

    iget-object v0, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v0}, Lo/WifiBatteryStats$ActionBar;->b(Lo/WifiBatteryStats$ActionBar;)Lo/TextClassificationManager;

    move-result-object v4

    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar$Activity;->e()Lo/InputBinding;

    move-result-object v5

    iget-object v0, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    iget-object v0, v0, Lo/WifiBatteryStats$ActionBar;->a:Lo/WifiBatteryStats;

    invoke-static {v0}, Lo/WifiBatteryStats;->b(Lo/WifiBatteryStats;)Lo/StrikethroughSpan;

    move-result-object v6

    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar$Activity;->a()Lo/SuggestionService;

    move-result-object v7

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lo/ViewStub;-><init>(Lcom/netflix/android/moneyball/FlowMode;Lo/SystemTextClassifier;Lo/TextClassifierImpl;Lo/TextClassificationManager;Lo/InputBinding;Lo/Deprecated$ActionBar;Lo/SuggestionService;)V

    return-object v8
.end method

.method private a(Lcom/netflix/mediaclient/acquisition2/screens/paypal/PayPalFragment;)Lcom/netflix/mediaclient/acquisition2/screens/paypal/PayPalFragment;
    .locals 1

    .line 1346
    iget-object v0, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v0}, Lo/WifiBatteryStats$ActionBar;->g(Lo/WifiBatteryStats$ActionBar;)Lo/GateKeeperResponse;

    move-result-object v0

    invoke-static {p1, v0}, Lo/ChangeTransform;->a(Lcom/netflix/mediaclient/acquisition2/screens/AbstractNetworkFragment2;Lo/GateKeeperResponse;)V

    .line 1347
    new-instance v0, Lo/WallpaperSettingsActivity;

    invoke-direct {v0}, Lo/WallpaperSettingsActivity;-><init>()V

    invoke-static {p1, v0}, Lo/DisplayEventReceiver;->a(Lcom/netflix/mediaclient/acquisition2/screens/paypal/PayPalFragment;Lo/WallpaperSettingsActivity;)V

    .line 1348
    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar$Activity;->S()Lo/FocusFinderHelper;

    move-result-object v0

    invoke-static {p1, v0}, Lo/DisplayEventReceiver;->c(Lcom/netflix/mediaclient/acquisition2/screens/paypal/PayPalFragment;Lo/FocusFinderHelper;)V

    .line 1349
    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar$Activity;->f()Lo/VoiceInteractionManagerInternal;

    move-result-object v0

    invoke-static {p1, v0}, Lo/DisplayEventReceiver;->a(Lcom/netflix/mediaclient/acquisition2/screens/paypal/PayPalFragment;Lo/VoiceInteractionManagerInternal;)V

    .line 1350
    new-instance v0, Lo/ConditionProviderService;

    invoke-direct {v0}, Lo/ConditionProviderService;-><init>()V

    invoke-static {p1, v0}, Lo/DisplayEventReceiver;->e(Lcom/netflix/mediaclient/acquisition2/screens/paypal/PayPalFragment;Lo/ConditionProviderService;)V

    .line 1351
    iget-object v0, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v0}, Lo/WifiBatteryStats$ActionBar;->b(Lo/WifiBatteryStats$ActionBar;)Lo/TextClassificationManager;

    move-result-object v0

    invoke-static {p1, v0}, Lo/DisplayEventReceiver;->c(Lcom/netflix/mediaclient/acquisition2/screens/paypal/PayPalFragment;Lo/TextClassificationManager;)V

    return-object p1
.end method

.method private a(Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment;)Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment;
    .locals 1

    .line 1374
    iget-object v0, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v0}, Lo/WifiBatteryStats$ActionBar;->g(Lo/WifiBatteryStats$ActionBar;)Lo/GateKeeperResponse;

    move-result-object v0

    invoke-static {p1, v0}, Lo/ChangeTransform;->a(Lcom/netflix/mediaclient/acquisition2/screens/AbstractNetworkFragment2;Lo/GateKeeperResponse;)V

    .line 1375
    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar$Activity;->U()Lo/InputEventSender;

    move-result-object v0

    invoke-static {p1, v0}, Lo/HapticFeedbackConstants;->c(Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment;Lo/InputEventSender;)V

    .line 1376
    new-instance v0, Lo/WallpaperSettingsActivity;

    invoke-direct {v0}, Lo/WallpaperSettingsActivity;-><init>()V

    invoke-static {p1, v0}, Lo/HapticFeedbackConstants;->b(Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment;Lo/WallpaperSettingsActivity;)V

    .line 1377
    new-instance v0, Lo/RasterizerSpan;

    invoke-direct {v0}, Lo/RasterizerSpan;-><init>()V

    invoke-static {p1, v0}, Lo/HapticFeedbackConstants;->b(Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment;Lo/RasterizerSpan;)V

    return-object p1
.end method

.method private a(Lcom/netflix/mediaclient/acquisition2/screens/planSelectionContext/PlanContextFragment;)Lcom/netflix/mediaclient/acquisition2/screens/planSelectionContext/PlanContextFragment;
    .locals 1

    .line 1357
    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar$Activity;->P()Lo/InputQueue;

    move-result-object v0

    invoke-static {p1, v0}, Lo/KeyboardShortcutInfo;->e(Lcom/netflix/mediaclient/acquisition2/screens/planSelectionContext/PlanContextFragment;Lo/InputQueue;)V

    .line 1358
    iget-object v0, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v0}, Lo/WifiBatteryStats$ActionBar;->o(Lo/WifiBatteryStats$ActionBar;)Lcom/netflix/mediaclient/acquisition2/screens/planSelectionContext/PlanContextFragment$TaskDescription;

    move-result-object v0

    invoke-static {p1, v0}, Lo/KeyboardShortcutInfo;->d(Lcom/netflix/mediaclient/acquisition2/screens/planSelectionContext/PlanContextFragment;Lcom/netflix/mediaclient/acquisition2/screens/planSelectionContext/PlanContextFragment$TaskDescription;)V

    return-object p1
.end method

.method private a(Lcom/netflix/mediaclient/acquisition2/screens/registration/RegistrationFragment;)Lcom/netflix/mediaclient/acquisition2/screens/registration/RegistrationFragment;
    .locals 1

    .line 1391
    iget-object v0, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v0}, Lo/WifiBatteryStats$ActionBar;->g(Lo/WifiBatteryStats$ActionBar;)Lo/GateKeeperResponse;

    move-result-object v0

    invoke-static {p1, v0}, Lo/ChangeTransform;->a(Lcom/netflix/mediaclient/acquisition2/screens/AbstractNetworkFragment2;Lo/GateKeeperResponse;)V

    .line 1392
    new-instance v0, Lo/WallpaperSettingsActivity;

    invoke-direct {v0}, Lo/WallpaperSettingsActivity;-><init>()V

    invoke-static {p1, v0}, Lo/SurfaceView;->d(Lcom/netflix/mediaclient/acquisition2/screens/registration/RegistrationFragment;Lo/WallpaperSettingsActivity;)V

    .line 1393
    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar$Activity;->W()Lo/ThreadedRenderer;

    move-result-object v0

    invoke-static {p1, v0}, Lo/SurfaceView;->b(Lcom/netflix/mediaclient/acquisition2/screens/registration/RegistrationFragment;Lo/ThreadedRenderer;)V

    .line 1394
    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar$Activity;->X()Lo/SpannableStringInternal;

    move-result-object v0

    invoke-static {p1, v0}, Lo/SurfaceView;->a(Lcom/netflix/mediaclient/acquisition2/screens/registration/RegistrationFragment;Lo/SpannableStringInternal;)V

    return-object p1
.end method

.method private a(Lcom/netflix/mediaclient/acquisition2/screens/registrationContext/RegistrationContextFragment;)Lcom/netflix/mediaclient/acquisition2/screens/registrationContext/RegistrationContextFragment;
    .locals 1

    .line 1384
    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar$Activity;->T()Lo/ViewHierarchyEncoder;

    move-result-object v0

    invoke-static {p1, v0}, Lo/VelocityTracker;->b(Lcom/netflix/mediaclient/acquisition2/screens/registrationContext/RegistrationContextFragment;Lo/ViewHierarchyEncoder;)V

    .line 1385
    iget-object v0, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v0}, Lo/WifiBatteryStats$ActionBar;->r(Lo/WifiBatteryStats$ActionBar;)Lcom/netflix/mediaclient/acquisition2/screens/registrationContext/RegistrationContextFragment$ActionBar;

    move-result-object v0

    invoke-static {p1, v0}, Lo/VelocityTracker;->b(Lcom/netflix/mediaclient/acquisition2/screens/registrationContext/RegistrationContextFragment;Lcom/netflix/mediaclient/acquisition2/screens/registrationContext/RegistrationContextFragment$ActionBar;)V

    return-object p1
.end method

.method private a(Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryCardFragment;)Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryCardFragment;
    .locals 1

    .line 1445
    iget-object v0, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v0}, Lo/WifiBatteryStats$ActionBar;->j(Lo/WifiBatteryStats$ActionBar;)Lo/SpellCheckerSubtype;

    move-result-object v0

    invoke-static {p1, v0}, Lo/AutofillPopupWindow;->b(Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryCardFragment;Lo/SpellCheckerSubtype;)V

    .line 1446
    iget-object v0, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v0}, Lo/WifiBatteryStats$ActionBar;->s(Lo/WifiBatteryStats$ActionBar;)Lo/ScaleAnimation;

    move-result-object v0

    invoke-static {p1, v0}, Lo/AutofillPopupWindow;->d(Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryCardFragment;Lo/ScaleAnimation;)V

    .line 1447
    new-instance v0, Lo/TextSelection;

    invoke-direct {v0}, Lo/TextSelection;-><init>()V

    invoke-static {p1, v0}, Lo/AutofillPopupWindow;->d(Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryCardFragment;Lo/TextSelection;)V

    return-object p1
.end method

.method private a(Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;)Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;
    .locals 1

    .line 1499
    iget-object v0, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    iget-object v0, v0, Lo/WifiBatteryStats$ActionBar;->a:Lo/WifiBatteryStats;

    invoke-static {v0}, Lo/WifiBatteryStats;->h(Lo/WifiBatteryStats;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Lo/ajV;->e(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    invoke-static {p1, v0}, Lo/WebResourceResponse;->a(Lcom/netflix/mediaclient/android/fragment/NetflixFrag;Ldagger/Lazy;)V

    .line 1500
    iget-object v0, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v0}, Lo/WifiBatteryStats$ActionBar;->w(Lo/WifiBatteryStats$ActionBar;)Lo/ActionMenuView;

    move-result-object v0

    invoke-static {p1, v0}, Lo/GJ;->e(Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;Lo/WebViewProvider;)V

    return-object p1
.end method

.method private a(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;)Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;
    .locals 1

    .line 1491
    iget-object v0, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    iget-object v0, v0, Lo/WifiBatteryStats$ActionBar;->a:Lo/WifiBatteryStats;

    invoke-static {v0}, Lo/WifiBatteryStats;->h(Lo/WifiBatteryStats;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Lo/ajV;->e(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    invoke-static {p1, v0}, Lo/WebResourceResponse;->a(Lcom/netflix/mediaclient/android/fragment/NetflixFrag;Ldagger/Lazy;)V

    .line 1492
    iget-object v0, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    iget-object v0, v0, Lo/WifiBatteryStats$ActionBar;->a:Lo/WifiBatteryStats;

    invoke-static {v0}, Lo/WifiBatteryStats;->a(Lo/WifiBatteryStats;)Lo/ViewSwitcher;

    move-result-object v0

    invoke-static {p1, v0}, Lo/Zc;->e(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;Lo/ViewSwitcher;)V

    .line 1493
    iget-object v0, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    iget-object v0, v0, Lo/WifiBatteryStats$ActionBar;->a:Lo/WifiBatteryStats;

    invoke-virtual {v0}, Lo/WifiBatteryStats;->j()Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker;

    move-result-object v0

    invoke-static {p1, v0}, Lo/Zc;->d(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker;)V

    return-object p1
.end method

.method private a(Lo/DataUnit;)Lo/DataUnit;
    .locals 1

    .line 1204
    iget-object v0, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v0}, Lo/WifiBatteryStats$ActionBar;->g(Lo/WifiBatteryStats$ActionBar;)Lo/GateKeeperResponse;

    move-result-object v0

    invoke-static {p1, v0}, Lo/ChangeTransform;->a(Lcom/netflix/mediaclient/acquisition2/screens/AbstractNetworkFragment2;Lo/GateKeeperResponse;)V

    .line 1205
    new-instance v0, Lo/WallpaperSettingsActivity;

    invoke-direct {v0}, Lo/WallpaperSettingsActivity;-><init>()V

    invoke-static {p1, v0}, Lo/Base64DataException;->c(Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;Lo/WallpaperSettingsActivity;)V

    .line 1206
    new-instance v0, Lo/ImageSpan;

    invoke-direct {v0}, Lo/ImageSpan;-><init>()V

    invoke-static {p1, v0}, Lo/Base64DataException;->e(Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;Lo/ImageSpan;)V

    .line 1207
    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar$Activity;->w()Lo/ContainerHelpers;

    move-result-object v0

    invoke-static {p1, v0}, Lo/Base64DataException;->d(Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;Lo/ContainerHelpers;)V

    .line 1208
    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar$Activity;->f()Lo/VoiceInteractionManagerInternal;

    move-result-object v0

    invoke-static {p1, v0}, Lo/Base64DataException;->d(Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;Lo/VoiceInteractionManagerInternal;)V

    .line 1209
    new-instance v0, Lo/ConditionProviderService;

    invoke-direct {v0}, Lo/ConditionProviderService;-><init>()V

    invoke-static {p1, v0}, Lo/Base64DataException;->e(Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;Lo/ConditionProviderService;)V

    .line 1210
    new-instance v0, Lo/TextKeyListener;

    invoke-direct {v0}, Lo/TextKeyListener;-><init>()V

    invoke-static {p1, v0}, Lo/Base64DataException;->b(Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;Lo/TextKeyListener;)V

    .line 1211
    iget-object v0, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v0}, Lo/WifiBatteryStats$ActionBar;->j(Lo/WifiBatteryStats$ActionBar;)Lo/SpellCheckerSubtype;

    move-result-object v0

    invoke-static {p1, v0}, Lo/Base64DataException;->c(Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;Lo/SpellCheckerSubtype;)V

    return-object p1
.end method

.method private a()Lo/SuggestionService;
    .locals 4

    .line 819
    new-instance v0, Lo/SuggestionService;

    iget-object v1, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v1}, Lo/WifiBatteryStats$ActionBar;->c(Lo/WifiBatteryStats$ActionBar;)Lcom/netflix/android/moneyball/FlowMode;

    move-result-object v1

    iget-object v2, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v2}, Lo/WifiBatteryStats$ActionBar;->e(Lo/WifiBatteryStats$ActionBar;)Lo/SystemTextClassifier;

    move-result-object v2

    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar$Activity;->e()Lo/InputBinding;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lo/SuggestionService;-><init>(Lcom/netflix/android/moneyball/FlowMode;Lo/SystemTextClassifier;Lo/InputBinding;)V

    return-object v0
.end method

.method private aa()Lo/DateFormat;
    .locals 7

    .line 981
    new-instance v6, Lo/DateFormat;

    iget-object v0, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v0}, Lo/WifiBatteryStats$ActionBar;->c(Lo/WifiBatteryStats$ActionBar;)Lcom/netflix/android/moneyball/FlowMode;

    move-result-object v1

    iget-object v0, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v0}, Lo/WifiBatteryStats$ActionBar;->e(Lo/WifiBatteryStats$ActionBar;)Lo/SystemTextClassifier;

    move-result-object v2

    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar$Activity;->e()Lo/InputBinding;

    move-result-object v3

    new-instance v4, Lo/TextToSpeechService;

    invoke-direct {v4}, Lo/TextToSpeechService;-><init>()V

    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar$Activity;->A()Lo/InputMethodManager;

    move-result-object v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lo/DateFormat;-><init>(Lcom/netflix/android/moneyball/FlowMode;Lo/SystemTextClassifier;Lo/InputBinding;Lo/TextToSpeechService;Lo/InputMethodManager;)V

    return-object v6
.end method

.method private ab()Lo/AnimationSet;
    .locals 12

    .line 978
    new-instance v11, Lo/AnimationSet;

    iget-object v0, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v0}, Lo/WifiBatteryStats$ActionBar;->c(Lo/WifiBatteryStats$ActionBar;)Lcom/netflix/android/moneyball/FlowMode;

    move-result-object v1

    iget-object v0, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v0}, Lo/WifiBatteryStats$ActionBar;->e(Lo/WifiBatteryStats$ActionBar;)Lo/SystemTextClassifier;

    move-result-object v2

    iget-object v0, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v0}, Lo/WifiBatteryStats$ActionBar;->a(Lo/WifiBatteryStats$ActionBar;)Lo/TextClassifierImpl;

    move-result-object v3

    iget-object v0, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v0}, Lo/WifiBatteryStats$ActionBar;->b(Lo/WifiBatteryStats$ActionBar;)Lo/TextClassificationManager;

    move-result-object v4

    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar$Activity;->e()Lo/InputBinding;

    move-result-object v5

    iget-object v0, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    iget-object v0, v0, Lo/WifiBatteryStats$ActionBar;->a:Lo/WifiBatteryStats;

    invoke-static {v0}, Lo/WifiBatteryStats;->b(Lo/WifiBatteryStats;)Lo/StrikethroughSpan;

    move-result-object v6

    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar$Activity;->o()Lo/DrawableMarginSpan;

    move-result-object v7

    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar$Activity;->a()Lo/SuggestionService;

    move-result-object v8

    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar$Activity;->M()Lo/Touch;

    move-result-object v9

    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar$Activity;->v()Lo/SentenceSuggestionsInfo;

    move-result-object v10

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Lo/AnimationSet;-><init>(Lcom/netflix/android/moneyball/FlowMode;Lo/SystemTextClassifier;Lo/TextClassifierImpl;Lo/TextClassificationManager;Lo/InputBinding;Lo/Deprecated$ActionBar;Lo/DrawableMarginSpan;Lo/SuggestionService;Lo/Touch;Lo/SentenceSuggestionsInfo;)V

    return-object v11
.end method

.method private ac()Lo/TextDirectionHeuristic;
    .locals 7

    .line 984
    new-instance v6, Lo/TextDirectionHeuristic;

    iget-object v0, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v0}, Lo/WifiBatteryStats$ActionBar;->c(Lo/WifiBatteryStats$ActionBar;)Lcom/netflix/android/moneyball/FlowMode;

    move-result-object v1

    iget-object v0, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v0}, Lo/WifiBatteryStats$ActionBar;->e(Lo/WifiBatteryStats$ActionBar;)Lo/SystemTextClassifier;

    move-result-object v2

    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar$Activity;->e()Lo/InputBinding;

    move-result-object v3

    new-instance v4, Lo/TextToSpeechService;

    invoke-direct {v4}, Lo/TextToSpeechService;-><init>()V

    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar$Activity;->A()Lo/InputMethodManager;

    move-result-object v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lo/TextDirectionHeuristic;-><init>(Lcom/netflix/android/moneyball/FlowMode;Lo/SystemTextClassifier;Lo/InputBinding;Lo/TextToSpeechService;Lo/InputMethodManager;)V

    return-object v6
.end method

.method private ad()Lo/MeasuredParagraph;
    .locals 7

    .line 987
    new-instance v6, Lo/MeasuredParagraph;

    iget-object v0, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v0}, Lo/WifiBatteryStats$ActionBar;->c(Lo/WifiBatteryStats$ActionBar;)Lcom/netflix/android/moneyball/FlowMode;

    move-result-object v1

    iget-object v0, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v0}, Lo/WifiBatteryStats$ActionBar;->e(Lo/WifiBatteryStats$ActionBar;)Lo/SystemTextClassifier;

    move-result-object v2

    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar$Activity;->e()Lo/InputBinding;

    move-result-object v3

    new-instance v4, Lo/TextToSpeechService;

    invoke-direct {v4}, Lo/TextToSpeechService;-><init>()V

    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar$Activity;->A()Lo/InputMethodManager;

    move-result-object v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lo/MeasuredParagraph;-><init>(Lcom/netflix/android/moneyball/FlowMode;Lo/SystemTextClassifier;Lo/InputBinding;Lo/TextToSpeechService;Lo/InputMethodManager;)V

    return-object v6
.end method

.method private ae()Lo/GridLayoutAnimationController;
    .locals 10

    .line 996
    new-instance v9, Lo/GridLayoutAnimationController;

    iget-object v0, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v0}, Lo/WifiBatteryStats$ActionBar;->c(Lo/WifiBatteryStats$ActionBar;)Lcom/netflix/android/moneyball/FlowMode;

    move-result-object v1

    iget-object v0, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v0}, Lo/WifiBatteryStats$ActionBar;->e(Lo/WifiBatteryStats$ActionBar;)Lo/SystemTextClassifier;

    move-result-object v2

    iget-object v0, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v0}, Lo/WifiBatteryStats$ActionBar;->a(Lo/WifiBatteryStats$ActionBar;)Lo/TextClassifierImpl;

    move-result-object v3

    iget-object v0, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v0}, Lo/WifiBatteryStats$ActionBar;->b(Lo/WifiBatteryStats$ActionBar;)Lo/TextClassificationManager;

    move-result-object v4

    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar$Activity;->e()Lo/InputBinding;

    move-result-object v5

    iget-object v0, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    iget-object v0, v0, Lo/WifiBatteryStats$ActionBar;->a:Lo/WifiBatteryStats;

    invoke-static {v0}, Lo/WifiBatteryStats;->b(Lo/WifiBatteryStats;)Lo/StrikethroughSpan;

    move-result-object v6

    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar$Activity;->a()Lo/SuggestionService;

    move-result-object v7

    iget-object v0, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    iget-object v0, v0, Lo/WifiBatteryStats$ActionBar;->a:Lo/WifiBatteryStats;

    invoke-static {v0}, Lo/WifiBatteryStats;->j(Lo/WifiBatteryStats;)Ljava/lang/String;

    move-result-object v8

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lo/GridLayoutAnimationController;-><init>(Lcom/netflix/android/moneyball/FlowMode;Lo/SystemTextClassifier;Lo/TextClassifierImpl;Lo/TextClassificationManager;Lo/InputBinding;Lo/Deprecated$ActionBar;Lo/SuggestionService;Ljava/lang/String;)V

    return-object v9
.end method

.method private af()Lo/ParcelableMap;
    .locals 4

    .line 999
    new-instance v0, Lo/ParcelableMap;

    iget-object v1, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v1}, Lo/WifiBatteryStats$ActionBar;->c(Lo/WifiBatteryStats$ActionBar;)Lcom/netflix/android/moneyball/FlowMode;

    move-result-object v1

    iget-object v2, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v2}, Lo/WifiBatteryStats$ActionBar;->e(Lo/WifiBatteryStats$ActionBar;)Lo/SystemTextClassifier;

    move-result-object v2

    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar$Activity;->e()Lo/InputBinding;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lo/ParcelableMap;-><init>(Lcom/netflix/android/moneyball/FlowMode;Lo/SystemTextClassifier;Lo/InputBinding;)V

    return-object v0
.end method

.method private ag()Lo/OvershootInterpolator;
    .locals 4

    .line 993
    new-instance v0, Lo/OvershootInterpolator;

    iget-object v1, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v1}, Lo/WifiBatteryStats$ActionBar;->c(Lo/WifiBatteryStats$ActionBar;)Lcom/netflix/android/moneyball/FlowMode;

    move-result-object v1

    iget-object v2, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v2}, Lo/WifiBatteryStats$ActionBar;->e(Lo/WifiBatteryStats$ActionBar;)Lo/SystemTextClassifier;

    move-result-object v2

    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar$Activity;->e()Lo/InputBinding;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lo/OvershootInterpolator;-><init>(Lcom/netflix/android/moneyball/FlowMode;Lo/SystemTextClassifier;Lo/InputBinding;)V

    return-object v0
.end method

.method private ah()Lo/AnimationUtils;
    .locals 12

    .line 990
    new-instance v11, Lo/AnimationUtils;

    iget-object v0, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v0}, Lo/WifiBatteryStats$ActionBar;->c(Lo/WifiBatteryStats$ActionBar;)Lcom/netflix/android/moneyball/FlowMode;

    move-result-object v1

    iget-object v0, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v0}, Lo/WifiBatteryStats$ActionBar;->e(Lo/WifiBatteryStats$ActionBar;)Lo/SystemTextClassifier;

    move-result-object v2

    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar$Activity;->e()Lo/InputBinding;

    move-result-object v3

    iget-object v0, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v0}, Lo/WifiBatteryStats$ActionBar;->a(Lo/WifiBatteryStats$ActionBar;)Lo/TextClassifierImpl;

    move-result-object v4

    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar$Activity;->a()Lo/SuggestionService;

    move-result-object v5

    iget-object v0, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    iget-object v0, v0, Lo/WifiBatteryStats$ActionBar;->a:Lo/WifiBatteryStats;

    invoke-static {v0}, Lo/WifiBatteryStats;->b(Lo/WifiBatteryStats;)Lo/StrikethroughSpan;

    move-result-object v6

    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar$Activity;->aa()Lo/DateFormat;

    move-result-object v7

    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar$Activity;->ac()Lo/TextDirectionHeuristic;

    move-result-object v8

    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar$Activity;->ad()Lo/MeasuredParagraph;

    move-result-object v9

    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar$Activity;->z()Lo/CharacterPickerDialog;

    move-result-object v10

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Lo/AnimationUtils;-><init>(Lcom/netflix/android/moneyball/FlowMode;Lo/SystemTextClassifier;Lo/InputBinding;Lo/TextClassifierImpl;Lo/SuggestionService;Lo/Deprecated$ActionBar;Lo/DateFormat;Lo/TextDirectionHeuristic;Lo/MeasuredParagraph;Lo/CharacterPickerDialog;)V

    return-object v11
.end method

.method private aj()Lo/LN;
    .locals 2

    .line 1005
    new-instance v0, Lo/LN;

    iget-object v1, p0, Lo/WifiBatteryStats$ActionBar$Activity;->c:Lcom/netflix/binder/generated/BinderFragmentModule;

    invoke-static {v1}, Lo/HealthStats;->c(Lcom/netflix/binder/generated/BinderFragmentModule;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/LN;-><init>(Landroidx/fragment/app/Fragment;)V

    return-object v0
.end method

.method private ak()Lo/CursorAnchorInfo;
    .locals 9

    .line 1002
    new-instance v8, Lo/CursorAnchorInfo;

    iget-object v0, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v0}, Lo/WifiBatteryStats$ActionBar;->c(Lo/WifiBatteryStats$ActionBar;)Lcom/netflix/android/moneyball/FlowMode;

    move-result-object v1

    iget-object v0, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v0}, Lo/WifiBatteryStats$ActionBar;->e(Lo/WifiBatteryStats$ActionBar;)Lo/SystemTextClassifier;

    move-result-object v2

    iget-object v0, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v0}, Lo/WifiBatteryStats$ActionBar;->a(Lo/WifiBatteryStats$ActionBar;)Lo/TextClassifierImpl;

    move-result-object v3

    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar$Activity;->e()Lo/InputBinding;

    move-result-object v4

    iget-object v0, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    iget-object v0, v0, Lo/WifiBatteryStats$ActionBar;->a:Lo/WifiBatteryStats;

    invoke-static {v0}, Lo/WifiBatteryStats;->b(Lo/WifiBatteryStats;)Lo/StrikethroughSpan;

    move-result-object v5

    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar$Activity;->a()Lo/SuggestionService;

    move-result-object v6

    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar$Activity;->af()Lo/ParcelableMap;

    move-result-object v7

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lo/CursorAnchorInfo;-><init>(Lcom/netflix/android/moneyball/FlowMode;Lo/SystemTextClassifier;Lo/TextClassifierImpl;Lo/InputBinding;Lo/Deprecated$ActionBar;Lo/SuggestionService;Lo/ParcelableMap;)V

    return-object v8
.end method

.method private b(Lcom/netflix/mediaclient/acquisition2/screens/dcb/DCBPaymentFragment;)Lcom/netflix/mediaclient/acquisition2/screens/dcb/DCBPaymentFragment;
    .locals 1

    .line 1217
    iget-object v0, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v0}, Lo/WifiBatteryStats$ActionBar;->g(Lo/WifiBatteryStats$ActionBar;)Lo/GateKeeperResponse;

    move-result-object v0

    invoke-static {p1, v0}, Lo/ChangeTransform;->a(Lcom/netflix/mediaclient/acquisition2/screens/AbstractNetworkFragment2;Lo/GateKeeperResponse;)V

    .line 1218
    new-instance v0, Lo/WallpaperSettingsActivity;

    invoke-direct {v0}, Lo/WallpaperSettingsActivity;-><init>()V

    invoke-static {p1, v0}, Lo/EventLog;->a(Lcom/netflix/mediaclient/acquisition2/screens/dcb/DCBPaymentFragment;Lo/WallpaperSettingsActivity;)V

    .line 1219
    new-instance v0, Lo/ImageSpan;

    invoke-direct {v0}, Lo/ImageSpan;-><init>()V

    invoke-static {p1, v0}, Lo/EventLog;->a(Lcom/netflix/mediaclient/acquisition2/screens/dcb/DCBPaymentFragment;Lo/ImageSpan;)V

    .line 1220
    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar$Activity;->u()Lo/Half;

    move-result-object v0

    invoke-static {p1, v0}, Lo/EventLog;->d(Lcom/netflix/mediaclient/acquisition2/screens/dcb/DCBPaymentFragment;Lo/Half;)V

    .line 1221
    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar$Activity;->f()Lo/VoiceInteractionManagerInternal;

    move-result-object v0

    invoke-static {p1, v0}, Lo/EventLog;->e(Lcom/netflix/mediaclient/acquisition2/screens/dcb/DCBPaymentFragment;Lo/VoiceInteractionManagerInternal;)V

    .line 1222
    new-instance v0, Lo/ConditionProviderService;

    invoke-direct {v0}, Lo/ConditionProviderService;-><init>()V

    invoke-static {p1, v0}, Lo/EventLog;->c(Lcom/netflix/mediaclient/acquisition2/screens/dcb/DCBPaymentFragment;Lo/ConditionProviderService;)V

    return-object p1
.end method

.method private b(Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardPaymentFragment;)Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardPaymentFragment;
    .locals 1

    .line 1258
    iget-object v0, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v0}, Lo/WifiBatteryStats$ActionBar;->g(Lo/WifiBatteryStats$ActionBar;)Lo/GateKeeperResponse;

    move-result-object v0

    invoke-static {p1, v0}, Lo/ChangeTransform;->a(Lcom/netflix/mediaclient/acquisition2/screens/AbstractNetworkFragment2;Lo/GateKeeperResponse;)V

    .line 1259
    new-instance v0, Lo/WallpaperSettingsActivity;

    invoke-direct {v0}, Lo/WallpaperSettingsActivity;-><init>()V

    invoke-static {p1, v0}, Lo/MutableFloat;->e(Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardPaymentFragment;Lo/WallpaperSettingsActivity;)V

    .line 1260
    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar$Activity;->D()Lo/MutableLong;

    move-result-object v0

    invoke-static {p1, v0}, Lo/MutableFloat;->d(Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardPaymentFragment;Lo/MutableLong;)V

    .line 1261
    new-instance v0, Lo/ConditionProviderService;

    invoke-direct {v0}, Lo/ConditionProviderService;-><init>()V

    invoke-static {p1, v0}, Lo/MutableFloat;->e(Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardPaymentFragment;Lo/ConditionProviderService;)V

    .line 1262
    iget-object v0, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v0}, Lo/WifiBatteryStats$ActionBar;->m(Lo/WifiBatteryStats$ActionBar;)Lcom/netflix/mediaclient/acquisition/util/SafetyNetClientWrapper;

    move-result-object v0

    invoke-static {p1, v0}, Lo/MutableFloat;->a(Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardPaymentFragment;Lcom/netflix/mediaclient/acquisition/util/SafetyNetClientWrapper;)V

    .line 1263
    iget-object v0, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v0}, Lo/WifiBatteryStats$ActionBar;->b(Lo/WifiBatteryStats$ActionBar;)Lo/TextClassificationManager;

    move-result-object v0

    invoke-static {p1, v0}, Lo/MutableFloat;->c(Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardPaymentFragment;Lo/TextClassificationManager;)V

    return-object p1
.end method

.method private b(Lcom/netflix/mediaclient/acquisition2/screens/paymentContext/PaymentContextFragment;)Lcom/netflix/mediaclient/acquisition2/screens/paymentContext/PaymentContextFragment;
    .locals 1

    .line 1337
    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar$Activity;->Q()Lo/FallbackEventHandler;

    move-result-object v0

    invoke-static {p1, v0}, Lo/BatchedInputEventReceiver;->c(Lcom/netflix/mediaclient/acquisition2/screens/paymentContext/PaymentContextFragment;Lo/FallbackEventHandler;)V

    .line 1338
    iget-object v0, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v0}, Lo/WifiBatteryStats$ActionBar;->l(Lo/WifiBatteryStats$ActionBar;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p1, v0}, Lo/BatchedInputEventReceiver;->d(Lcom/netflix/mediaclient/acquisition2/screens/paymentContext/PaymentContextFragment;Ljava/util/ArrayList;)V

    .line 1339
    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar$Activity;->O()Lo/TextClassificationConstants;

    move-result-object v0

    invoke-static {p1, v0}, Lo/BatchedInputEventReceiver;->c(Lcom/netflix/mediaclient/acquisition2/screens/paymentContext/PaymentContextFragment;Lo/TextClassificationConstants;)V

    .line 1340
    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar$Activity;->f()Lo/VoiceInteractionManagerInternal;

    move-result-object v0

    invoke-static {p1, v0}, Lo/BatchedInputEventReceiver;->d(Lcom/netflix/mediaclient/acquisition2/screens/paymentContext/PaymentContextFragment;Lo/VoiceInteractionManagerInternal;)V

    return-object p1
.end method

.method private b(Lcom/netflix/mediaclient/acquisition2/screens/replayRequest/ReplayRequestFragment;)Lcom/netflix/mediaclient/acquisition2/screens/replayRequest/ReplayRequestFragment;
    .locals 1

    .line 1400
    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar$Activity;->Z()Lo/ViewStub;

    move-result-object v0

    invoke-static {p1, v0}, Lo/ViewDebug;->e(Lcom/netflix/mediaclient/acquisition2/screens/replayRequest/ReplayRequestFragment;Lo/ViewStub;)V

    return-object p1
.end method

.method private b(Lcom/netflix/mediaclient/acquisition2/screens/returningMemberContext/ReturningMemberContextFragment;)Lcom/netflix/mediaclient/acquisition2/screens/returningMemberContext/ReturningMemberContextFragment;
    .locals 1

    .line 1407
    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar$Activity;->Y()Lo/WindowManagerImpl;

    move-result-object v0

    invoke-static {p1, v0}, Lo/WindowManagerGlobal;->b(Lcom/netflix/mediaclient/acquisition2/screens/returningMemberContext/ReturningMemberContextFragment;Lo/WindowManagerImpl;)V

    .line 1408
    iget-object v0, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v0}, Lo/WifiBatteryStats$ActionBar;->p(Lo/WifiBatteryStats$ActionBar;)Lcom/netflix/mediaclient/acquisition2/screens/returningMemberContext/ReturningMemberContextFragment$StateListAnimator;

    move-result-object v0

    invoke-static {p1, v0}, Lo/WindowManagerGlobal;->c(Lcom/netflix/mediaclient/acquisition2/screens/returningMemberContext/ReturningMemberContextFragment;Lcom/netflix/mediaclient/acquisition2/screens/returningMemberContext/ReturningMemberContextFragment$StateListAnimator;)V

    return-object p1
.end method

.method private b(Lcom/netflix/mediaclient/acquisition2/screens/verifyCard/VerifyCardFragment;)Lcom/netflix/mediaclient/acquisition2/screens/verifyCard/VerifyCardFragment;
    .locals 1

    .line 1439
    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar$Activity;->ae()Lo/GridLayoutAnimationController;

    move-result-object v0

    invoke-static {p1, v0}, Lo/BounceInterpolator;->b(Lcom/netflix/mediaclient/acquisition2/screens/verifyCard/VerifyCardFragment;Lo/GridLayoutAnimationController;)V

    return-object p1
.end method

.method private b(Lcom/netflix/mediaclient/acquisition2/screens/verifyCardContext/VerifyCardContextFragment;)Lcom/netflix/mediaclient/acquisition2/screens/verifyCardContext/VerifyCardContextFragment;
    .locals 1

    .line 1431
    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar$Activity;->ag()Lo/OvershootInterpolator;

    move-result-object v0

    invoke-static {p1, v0}, Lo/PathInterpolator;->b(Lcom/netflix/mediaclient/acquisition2/screens/verifyCardContext/VerifyCardContextFragment;Lo/OvershootInterpolator;)V

    .line 1432
    iget-object v0, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v0}, Lo/WifiBatteryStats$ActionBar;->q(Lo/WifiBatteryStats$ActionBar;)Lcom/netflix/mediaclient/acquisition2/screens/verifyCardContext/VerifyCardContextFragment$Activity;

    move-result-object v0

    invoke-static {p1, v0}, Lo/PathInterpolator;->e(Lcom/netflix/mediaclient/acquisition2/screens/verifyCardContext/VerifyCardContextFragment;Lcom/netflix/mediaclient/acquisition2/screens/verifyCardContext/VerifyCardContextFragment$Activity;)V

    .line 1433
    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar$Activity;->e()Lo/InputBinding;

    move-result-object v0

    invoke-static {p1, v0}, Lo/PathInterpolator;->e(Lcom/netflix/mediaclient/acquisition2/screens/verifyCardContext/VerifyCardContextFragment;Lo/InputBinding;)V

    return-object p1
.end method

.method private b(Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;)Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;
    .locals 1

    .line 1470
    iget-object v0, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    iget-object v0, v0, Lo/WifiBatteryStats$ActionBar;->a:Lo/WifiBatteryStats;

    invoke-static {v0}, Lo/WifiBatteryStats;->h(Lo/WifiBatteryStats;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Lo/ajV;->e(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    invoke-static {p1, v0}, Lo/WebResourceResponse;->a(Lcom/netflix/mediaclient/android/fragment/NetflixFrag;Ldagger/Lazy;)V

    .line 1471
    iget-object v0, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    iget-object v0, v0, Lo/WifiBatteryStats$ActionBar;->a:Lo/WifiBatteryStats;

    invoke-static {v0}, Lo/WifiBatteryStats;->h(Lo/WifiBatteryStats;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Lo/ajV;->e(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    invoke-static {p1, v0}, Lo/Ks;->b(Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;Ldagger/Lazy;)V

    return-object p1
.end method

.method private b()Lo/DialerKeyListener;
    .locals 4

    .line 823
    new-instance v0, Lo/DialerKeyListener;

    iget-object v1, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v1}, Lo/WifiBatteryStats$ActionBar;->c(Lo/WifiBatteryStats$ActionBar;)Lcom/netflix/android/moneyball/FlowMode;

    move-result-object v1

    iget-object v2, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v2}, Lo/WifiBatteryStats$ActionBar;->e(Lo/WifiBatteryStats$ActionBar;)Lo/SystemTextClassifier;

    move-result-object v2

    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar$Activity;->e()Lo/InputBinding;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lo/DialerKeyListener;-><init>(Lcom/netflix/android/moneyball/FlowMode;Lo/SystemTextClassifier;Lo/InputBinding;)V

    return-object v0
.end method

.method private c(Lcom/netflix/mediaclient/acquisition2/screens/confirm/ConfirmFragment;)Lcom/netflix/mediaclient/acquisition2/screens/confirm/ConfirmFragment;
    .locals 1

    .line 1182
    iget-object v0, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v0}, Lo/WifiBatteryStats$ActionBar;->g(Lo/WifiBatteryStats$ActionBar;)Lo/GateKeeperResponse;

    move-result-object v0

    invoke-static {p1, v0}, Lo/ChangeTransform;->a(Lcom/netflix/mediaclient/acquisition2/screens/AbstractNetworkFragment2;Lo/GateKeeperResponse;)V

    .line 1183
    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar$Activity;->f()Lo/VoiceInteractionManagerInternal;

    move-result-object v0

    invoke-static {p1, v0}, Lo/Visibility;->b(Lcom/netflix/mediaclient/acquisition2/screens/confirm/ConfirmFragment;Lo/VoiceInteractionManagerInternal;)V

    .line 1184
    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar$Activity;->k()Lo/ArraySet;

    move-result-object v0

    invoke-static {p1, v0}, Lo/Visibility;->c(Lcom/netflix/mediaclient/acquisition2/screens/confirm/ConfirmFragment;Lo/ArraySet;)V

    .line 1185
    new-instance v0, Lo/WallpaperSettingsActivity;

    invoke-direct {v0}, Lo/WallpaperSettingsActivity;-><init>()V

    invoke-static {p1, v0}, Lo/Visibility;->c(Lcom/netflix/mediaclient/acquisition2/screens/confirm/ConfirmFragment;Lo/WallpaperSettingsActivity;)V

    return-object p1
.end method

.method private c(Lcom/netflix/mediaclient/acquisition2/screens/deviceSurvey/DeviceSurveyFragment;)Lcom/netflix/mediaclient/acquisition2/screens/deviceSurvey/DeviceSurveyFragment;
    .locals 1

    .line 1228
    new-instance v0, Lo/IntArray;

    invoke-direct {v0}, Lo/IntArray;-><init>()V

    invoke-static {p1, v0}, Lo/IntProperty;->b(Lcom/netflix/mediaclient/acquisition2/screens/deviceSurvey/DeviceSurveyFragment;Lo/IntArray;)V

    .line 1229
    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar$Activity;->x()Lo/JsonWriter;

    move-result-object v0

    invoke-static {p1, v0}, Lo/IntProperty;->b(Lcom/netflix/mediaclient/acquisition2/screens/deviceSurvey/DeviceSurveyFragment;Lo/JsonWriter;)V

    return-object p1
.end method

.method private c(Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardStartMembershipFragment;)Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardStartMembershipFragment;
    .locals 1

    .line 1270
    iget-object v0, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v0}, Lo/WifiBatteryStats$ActionBar;->g(Lo/WifiBatteryStats$ActionBar;)Lo/GateKeeperResponse;

    move-result-object v0

    invoke-static {p1, v0}, Lo/ChangeTransform;->a(Lcom/netflix/mediaclient/acquisition2/screens/AbstractNetworkFragment2;Lo/GateKeeperResponse;)V

    .line 1271
    new-instance v0, Lo/WallpaperSettingsActivity;

    invoke-direct {v0}, Lo/WallpaperSettingsActivity;-><init>()V

    invoke-static {p1, v0}, Lo/NtpTrustedTime;->b(Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardStartMembershipFragment;Lo/WallpaperSettingsActivity;)V

    .line 1272
    new-instance v0, Lo/ImageSpan;

    invoke-direct {v0}, Lo/ImageSpan;-><init>()V

    invoke-static {p1, v0}, Lo/NtpTrustedTime;->b(Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardStartMembershipFragment;Lo/ImageSpan;)V

    .line 1273
    new-instance v0, Lo/ConditionProviderService;

    invoke-direct {v0}, Lo/ConditionProviderService;-><init>()V

    invoke-static {p1, v0}, Lo/NtpTrustedTime;->e(Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardStartMembershipFragment;Lo/ConditionProviderService;)V

    .line 1274
    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar$Activity;->B()Lo/Patterns;

    move-result-object v0

    invoke-static {p1, v0}, Lo/NtpTrustedTime;->a(Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardStartMembershipFragment;Lo/Patterns;)V

    return-object p1
.end method

.method private c(Lcom/netflix/mediaclient/acquisition2/screens/maturityPin/MaturityPinFragment;)Lcom/netflix/mediaclient/acquisition2/screens/maturityPin/MaturityPinFragment;
    .locals 1

    .line 1280
    iget-object v0, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v0}, Lo/WifiBatteryStats$ActionBar;->g(Lo/WifiBatteryStats$ActionBar;)Lo/GateKeeperResponse;

    move-result-object v0

    invoke-static {p1, v0}, Lo/ChangeTransform;->a(Lcom/netflix/mediaclient/acquisition2/screens/AbstractNetworkFragment2;Lo/GateKeeperResponse;)V

    .line 1281
    new-instance v0, Lo/WallpaperSettingsActivity;

    invoke-direct {v0}, Lo/WallpaperSettingsActivity;-><init>()V

    invoke-static {p1, v0}, Lo/PrefixPrinter;->d(Lcom/netflix/mediaclient/acquisition2/screens/maturityPin/MaturityPinFragment;Lo/WallpaperSettingsActivity;)V

    .line 1282
    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar$Activity;->I()Lo/Rational;

    move-result-object v0

    invoke-static {p1, v0}, Lo/PrefixPrinter;->c(Lcom/netflix/mediaclient/acquisition2/screens/maturityPin/MaturityPinFragment;Lo/Rational;)V

    return-object p1
.end method

.method private c(Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;)Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;
    .locals 1

    .line 1295
    iget-object v0, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v0}, Lo/WifiBatteryStats$ActionBar;->g(Lo/WifiBatteryStats$ActionBar;)Lo/GateKeeperResponse;

    move-result-object v0

    invoke-static {p1, v0}, Lo/ChangeTransform;->a(Lcom/netflix/mediaclient/acquisition2/screens/AbstractNetworkFragment2;Lo/GateKeeperResponse;)V

    .line 1296
    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar$Activity;->H()Lo/TypedValue;

    move-result-object v0

    invoke-static {p1, v0}, Lo/SparseIntArray;->c(Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;Lo/TypedValue;)V

    .line 1297
    iget-object v0, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v0}, Lo/WifiBatteryStats$ActionBar;->k(Lo/WifiBatteryStats$ActionBar;)Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment$StateListAnimator;

    move-result-object v0

    invoke-static {p1, v0}, Lo/SparseIntArray;->a(Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment$StateListAnimator;)V

    return-object p1
.end method

.method private c(Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment;)Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment;
    .locals 1

    .line 1303
    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar$Activity;->G()Lo/ApkSigningBlockUtils;

    move-result-object v0

    invoke-static {p1, v0}, Lo/ApkSignatureSchemeV3Verifier;->b(Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment;Lo/ApkSigningBlockUtils;)V

    return-object p1
.end method

.method private c(Lcom/netflix/mediaclient/acquisition2/screens/smsPaymentContext/SMSPaymentContextFragment;)Lcom/netflix/mediaclient/acquisition2/screens/smsPaymentContext/SMSPaymentContextFragment;
    .locals 1

    .line 1415
    iget-object v0, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v0}, Lo/WifiBatteryStats$ActionBar;->t(Lo/WifiBatteryStats$ActionBar;)Lcom/netflix/mediaclient/acquisition2/screens/smsPaymentContext/SMSPaymentContextFragment$ActionBar;

    move-result-object v0

    invoke-static {p1, v0}, Lo/AccessibilityRequestPreparer;->e(Lcom/netflix/mediaclient/acquisition2/screens/smsPaymentContext/SMSPaymentContextFragment;Lcom/netflix/mediaclient/acquisition2/screens/smsPaymentContext/SMSPaymentContextFragment$ActionBar;)V

    .line 1416
    iget-object v0, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v0}, Lo/WifiBatteryStats$ActionBar;->j(Lo/WifiBatteryStats$ActionBar;)Lo/SpellCheckerSubtype;

    move-result-object v0

    invoke-static {p1, v0}, Lo/AccessibilityRequestPreparer;->a(Lcom/netflix/mediaclient/acquisition2/screens/smsPaymentContext/SMSPaymentContextFragment;Lo/SpellCheckerSubtype;)V

    .line 1417
    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar$Activity;->ab()Lo/AnimationSet;

    move-result-object v0

    invoke-static {p1, v0}, Lo/AccessibilityRequestPreparer;->d(Lcom/netflix/mediaclient/acquisition2/screens/smsPaymentContext/SMSPaymentContextFragment;Lo/AnimationSet;)V

    return-object p1
.end method

.method private c(Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryFragment;)Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryFragment;
    .locals 1

    .line 1453
    iget-object v0, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v0}, Lo/WifiBatteryStats$ActionBar;->g(Lo/WifiBatteryStats$ActionBar;)Lo/GateKeeperResponse;

    move-result-object v0

    invoke-static {p1, v0}, Lo/ChangeTransform;->a(Lcom/netflix/mediaclient/acquisition2/screens/AbstractNetworkFragment2;Lo/GateKeeperResponse;)V

    .line 1454
    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar$Activity;->ak()Lo/CursorAnchorInfo;

    move-result-object v0

    invoke-static {p1, v0}, Lo/InputContentInfo;->b(Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryFragment;Lo/CursorAnchorInfo;)V

    .line 1455
    new-instance v0, Lo/TranslateAnimation;

    invoke-direct {v0}, Lo/TranslateAnimation;-><init>()V

    invoke-static {p1, v0}, Lo/InputContentInfo;->b(Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryFragment;Lo/TranslateAnimation;)V

    .line 1456
    new-instance v0, Lo/InputConnectionWrapper;

    invoke-direct {v0}, Lo/InputConnectionWrapper;-><init>()V

    invoke-static {p1, v0}, Lo/InputContentInfo;->e(Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryFragment;Lo/InputConnectionWrapper;)V

    .line 1457
    new-instance v0, Lo/WallpaperSettingsActivity;

    invoke-direct {v0}, Lo/WallpaperSettingsActivity;-><init>()V

    invoke-static {p1, v0}, Lo/InputContentInfo;->b(Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryFragment;Lo/WallpaperSettingsActivity;)V

    .line 1458
    iget-object v0, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v0}, Lo/WifiBatteryStats$ActionBar;->s(Lo/WifiBatteryStats$ActionBar;)Lo/ScaleAnimation;

    move-result-object v0

    invoke-static {p1, v0}, Lo/InputContentInfo;->c(Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryFragment;Lo/ScaleAnimation;)V

    return-object p1
.end method

.method private c(Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;)Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;
    .locals 1

    .line 1477
    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar$Activity;->aj()Lo/LN;

    move-result-object v0

    invoke-static {p1, v0}, Lo/LK;->a(Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;Lo/LN;)V

    return-object p1
.end method

.method private c(Lo/DebugUtils;)Lo/DebugUtils;
    .locals 1

    .line 1191
    iget-object v0, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v0}, Lo/WifiBatteryStats$ActionBar;->g(Lo/WifiBatteryStats$ActionBar;)Lo/GateKeeperResponse;

    move-result-object v0

    invoke-static {p1, v0}, Lo/ChangeTransform;->a(Lcom/netflix/mediaclient/acquisition2/screens/AbstractNetworkFragment2;Lo/GateKeeperResponse;)V

    .line 1192
    new-instance v0, Lo/WallpaperSettingsActivity;

    invoke-direct {v0}, Lo/WallpaperSettingsActivity;-><init>()V

    invoke-static {p1, v0}, Lo/Base64DataException;->c(Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;Lo/WallpaperSettingsActivity;)V

    .line 1193
    new-instance v0, Lo/ImageSpan;

    invoke-direct {v0}, Lo/ImageSpan;-><init>()V

    invoke-static {p1, v0}, Lo/Base64DataException;->e(Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;Lo/ImageSpan;)V

    .line 1194
    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar$Activity;->w()Lo/ContainerHelpers;

    move-result-object v0

    invoke-static {p1, v0}, Lo/Base64DataException;->d(Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;Lo/ContainerHelpers;)V

    .line 1195
    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar$Activity;->f()Lo/VoiceInteractionManagerInternal;

    move-result-object v0

    invoke-static {p1, v0}, Lo/Base64DataException;->d(Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;Lo/VoiceInteractionManagerInternal;)V

    .line 1196
    new-instance v0, Lo/ConditionProviderService;

    invoke-direct {v0}, Lo/ConditionProviderService;-><init>()V

    invoke-static {p1, v0}, Lo/Base64DataException;->e(Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;Lo/ConditionProviderService;)V

    .line 1197
    new-instance v0, Lo/TextKeyListener;

    invoke-direct {v0}, Lo/TextKeyListener;-><init>()V

    invoke-static {p1, v0}, Lo/Base64DataException;->b(Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;Lo/TextKeyListener;)V

    .line 1198
    iget-object v0, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v0}, Lo/WifiBatteryStats$ActionBar;->j(Lo/WifiBatteryStats$ActionBar;)Lo/SpellCheckerSubtype;

    move-result-object v0

    invoke-static {p1, v0}, Lo/Base64DataException;->c(Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;Lo/SpellCheckerSubtype;)V

    return-object p1
.end method

.method private c(Lo/LongSparseArray;)Lo/LongSparseArray;
    .locals 1

    .line 1246
    iget-object v0, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v0}, Lo/WifiBatteryStats$ActionBar;->g(Lo/WifiBatteryStats$ActionBar;)Lo/GateKeeperResponse;

    move-result-object v0

    invoke-static {p1, v0}, Lo/ChangeTransform;->a(Lcom/netflix/mediaclient/acquisition2/screens/AbstractNetworkFragment2;Lo/GateKeeperResponse;)V

    .line 1247
    new-instance v0, Lo/WallpaperSettingsActivity;

    invoke-direct {v0}, Lo/WallpaperSettingsActivity;-><init>()V

    invoke-static {p1, v0}, Lo/LruCache;->d(Lcom/netflix/mediaclient/acquisition2/screens/directDebit/DirectDebitFragment;Lo/WallpaperSettingsActivity;)V

    .line 1248
    new-instance v0, Lo/ImageSpan;

    invoke-direct {v0}, Lo/ImageSpan;-><init>()V

    invoke-static {p1, v0}, Lo/LruCache;->c(Lcom/netflix/mediaclient/acquisition2/screens/directDebit/DirectDebitFragment;Lo/ImageSpan;)V

    .line 1249
    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar$Activity;->y()Lo/MonthDisplayHelper;

    move-result-object v0

    invoke-static {p1, v0}, Lo/LruCache;->a(Lcom/netflix/mediaclient/acquisition2/screens/directDebit/DirectDebitFragment;Lo/MonthDisplayHelper;)V

    .line 1250
    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar$Activity;->f()Lo/VoiceInteractionManagerInternal;

    move-result-object v0

    invoke-static {p1, v0}, Lo/LruCache;->d(Lcom/netflix/mediaclient/acquisition2/screens/directDebit/DirectDebitFragment;Lo/VoiceInteractionManagerInternal;)V

    .line 1251
    new-instance v0, Lo/ConditionProviderService;

    invoke-direct {v0}, Lo/ConditionProviderService;-><init>()V

    invoke-static {p1, v0}, Lo/LruCache;->b(Lcom/netflix/mediaclient/acquisition2/screens/directDebit/DirectDebitFragment;Lo/ConditionProviderService;)V

    return-object p1
.end method

.method private c(Lo/Sl;)Lo/Sl;
    .locals 1

    .line 1484
    iget-object v0, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    iget-object v0, v0, Lo/WifiBatteryStats$ActionBar;->a:Lo/WifiBatteryStats;

    invoke-static {v0}, Lo/WifiBatteryStats;->h(Lo/WifiBatteryStats;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Lo/ajV;->e(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    invoke-static {p1, v0}, Lo/WebResourceResponse;->a(Lcom/netflix/mediaclient/android/fragment/NetflixFrag;Ldagger/Lazy;)V

    return-object p1
.end method

.method private c()Lo/TranslationAnimationCreator;
    .locals 8

    .line 830
    new-instance v7, Lo/TranslationAnimationCreator;

    iget-object v0, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v0}, Lo/WifiBatteryStats$ActionBar;->c(Lo/WifiBatteryStats$ActionBar;)Lcom/netflix/android/moneyball/FlowMode;

    move-result-object v1

    iget-object v0, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v0}, Lo/WifiBatteryStats$ActionBar;->e(Lo/WifiBatteryStats$ActionBar;)Lo/SystemTextClassifier;

    move-result-object v2

    iget-object v0, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v0}, Lo/WifiBatteryStats$ActionBar;->a(Lo/WifiBatteryStats$ActionBar;)Lo/TextClassifierImpl;

    move-result-object v3

    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar$Activity;->e()Lo/InputBinding;

    move-result-object v4

    iget-object v0, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    iget-object v0, v0, Lo/WifiBatteryStats$ActionBar;->a:Lo/WifiBatteryStats;

    invoke-static {v0}, Lo/WifiBatteryStats;->b(Lo/WifiBatteryStats;)Lo/StrikethroughSpan;

    move-result-object v5

    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar$Activity;->a()Lo/SuggestionService;

    move-result-object v6

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lo/TranslationAnimationCreator;-><init>(Lcom/netflix/android/moneyball/FlowMode;Lo/SystemTextClassifier;Lo/TextClassifierImpl;Lo/InputBinding;Lo/Deprecated$ActionBar;Lo/SuggestionService;)V

    return-object v7
.end method

.method private d(Lo/LogPrinter;)Lo/LogPrinter;
    .locals 1

    .line 1235
    iget-object v0, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v0}, Lo/WifiBatteryStats$ActionBar;->g(Lo/WifiBatteryStats$ActionBar;)Lo/GateKeeperResponse;

    move-result-object v0

    invoke-static {p1, v0}, Lo/ChangeTransform;->a(Lcom/netflix/mediaclient/acquisition2/screens/AbstractNetworkFragment2;Lo/GateKeeperResponse;)V

    .line 1236
    new-instance v0, Lo/WallpaperSettingsActivity;

    invoke-direct {v0}, Lo/WallpaperSettingsActivity;-><init>()V

    invoke-static {p1, v0}, Lo/LruCache;->d(Lcom/netflix/mediaclient/acquisition2/screens/directDebit/DirectDebitFragment;Lo/WallpaperSettingsActivity;)V

    .line 1237
    new-instance v0, Lo/ImageSpan;

    invoke-direct {v0}, Lo/ImageSpan;-><init>()V

    invoke-static {p1, v0}, Lo/LruCache;->c(Lcom/netflix/mediaclient/acquisition2/screens/directDebit/DirectDebitFragment;Lo/ImageSpan;)V

    .line 1238
    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar$Activity;->y()Lo/MonthDisplayHelper;

    move-result-object v0

    invoke-static {p1, v0}, Lo/LruCache;->a(Lcom/netflix/mediaclient/acquisition2/screens/directDebit/DirectDebitFragment;Lo/MonthDisplayHelper;)V

    .line 1239
    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar$Activity;->f()Lo/VoiceInteractionManagerInternal;

    move-result-object v0

    invoke-static {p1, v0}, Lo/LruCache;->d(Lcom/netflix/mediaclient/acquisition2/screens/directDebit/DirectDebitFragment;Lo/VoiceInteractionManagerInternal;)V

    .line 1240
    new-instance v0, Lo/ConditionProviderService;

    invoke-direct {v0}, Lo/ConditionProviderService;-><init>()V

    invoke-static {p1, v0}, Lo/LruCache;->b(Lcom/netflix/mediaclient/acquisition2/screens/directDebit/DirectDebitFragment;Lo/ConditionProviderService;)V

    return-object p1
.end method

.method private d()Lo/Slide;
    .locals 9

    .line 826
    new-instance v8, Lo/Slide;

    iget-object v0, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v0}, Lo/WifiBatteryStats$ActionBar;->c(Lo/WifiBatteryStats$ActionBar;)Lcom/netflix/android/moneyball/FlowMode;

    move-result-object v1

    iget-object v0, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v0}, Lo/WifiBatteryStats$ActionBar;->e(Lo/WifiBatteryStats$ActionBar;)Lo/SystemTextClassifier;

    move-result-object v2

    iget-object v0, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v0}, Lo/WifiBatteryStats$ActionBar;->a(Lo/WifiBatteryStats$ActionBar;)Lo/TextClassifierImpl;

    move-result-object v3

    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar$Activity;->e()Lo/InputBinding;

    move-result-object v4

    iget-object v0, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    iget-object v0, v0, Lo/WifiBatteryStats$ActionBar;->a:Lo/WifiBatteryStats;

    invoke-static {v0}, Lo/WifiBatteryStats;->b(Lo/WifiBatteryStats;)Lo/StrikethroughSpan;

    move-result-object v5

    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar$Activity;->a()Lo/SuggestionService;

    move-result-object v6

    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar$Activity;->b()Lo/DialerKeyListener;

    move-result-object v7

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lo/Slide;-><init>(Lcom/netflix/android/moneyball/FlowMode;Lo/SystemTextClassifier;Lo/TextClassifierImpl;Lo/InputBinding;Lo/Deprecated$ActionBar;Lo/SuggestionService;Lo/DialerKeyListener;)V

    return-object v8
.end method

.method private e(Lcom/netflix/mediaclient/acquisition2/screens/addProfiles/AddProfilesFragment;)Lcom/netflix/mediaclient/acquisition2/screens/addProfiles/AddProfilesFragment;
    .locals 1

    .line 1165
    iget-object v0, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v0}, Lo/WifiBatteryStats$ActionBar;->g(Lo/WifiBatteryStats$ActionBar;)Lo/GateKeeperResponse;

    move-result-object v0

    invoke-static {p1, v0}, Lo/ChangeTransform;->a(Lcom/netflix/mediaclient/acquisition2/screens/AbstractNetworkFragment2;Lo/GateKeeperResponse;)V

    .line 1166
    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar$Activity;->d()Lo/Slide;

    move-result-object v0

    invoke-static {p1, v0}, Lo/PatternPathMotion;->a(Lcom/netflix/mediaclient/acquisition2/screens/addProfiles/AddProfilesFragment;Lo/Slide;)V

    .line 1167
    new-instance v0, Lo/WallpaperSettingsActivity;

    invoke-direct {v0}, Lo/WallpaperSettingsActivity;-><init>()V

    invoke-static {p1, v0}, Lo/PatternPathMotion;->b(Lcom/netflix/mediaclient/acquisition2/screens/addProfiles/AddProfilesFragment;Lo/WallpaperSettingsActivity;)V

    return-object p1
.end method

.method private e(Lcom/netflix/mediaclient/acquisition2/screens/changeCardProcessingType/ChangeCardProcessingTypeFragment;)Lcom/netflix/mediaclient/acquisition2/screens/changeCardProcessingType/ChangeCardProcessingTypeFragment;
    .locals 1

    .line 1174
    iget-object v0, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v0}, Lo/WifiBatteryStats$ActionBar;->g(Lo/WifiBatteryStats$ActionBar;)Lo/GateKeeperResponse;

    move-result-object v0

    invoke-static {p1, v0}, Lo/ChangeTransform;->a(Lcom/netflix/mediaclient/acquisition2/screens/AbstractNetworkFragment2;Lo/GateKeeperResponse;)V

    .line 1175
    new-instance v0, Lo/WallpaperSettingsActivity;

    invoke-direct {v0}, Lo/WallpaperSettingsActivity;-><init>()V

    invoke-static {p1, v0}, Lo/TransitionUtils;->e(Lcom/netflix/mediaclient/acquisition2/screens/changeCardProcessingType/ChangeCardProcessingTypeFragment;Lo/WallpaperSettingsActivity;)V

    .line 1176
    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar$Activity;->c()Lo/TranslationAnimationCreator;

    move-result-object v0

    invoke-static {p1, v0}, Lo/TransitionUtils;->e(Lcom/netflix/mediaclient/acquisition2/screens/changeCardProcessingType/ChangeCardProcessingTypeFragment;Lo/TranslationAnimationCreator;)V

    return-object p1
.end method

.method private e(Lcom/netflix/mediaclient/acquisition2/screens/mopWebView/MopWebViewFragment;)Lcom/netflix/mediaclient/acquisition2/screens/mopWebView/MopWebViewFragment;
    .locals 1

    .line 1288
    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar$Activity;->F()Lo/SparseSetArray;

    move-result-object v0

    invoke-static {p1, v0}, Lo/SparseBooleanArray;->c(Lcom/netflix/mediaclient/acquisition2/screens/mopWebView/MopWebViewFragment;Lo/SparseSetArray;)V

    .line 1289
    iget-object v0, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v0}, Lo/WifiBatteryStats$ActionBar;->b(Lo/WifiBatteryStats$ActionBar;)Lo/TextClassificationManager;

    move-result-object v0

    invoke-static {p1, v0}, Lo/SparseBooleanArray;->d(Lcom/netflix/mediaclient/acquisition2/screens/mopWebView/MopWebViewFragment;Lo/TextClassificationManager;)V

    return-object p1
.end method

.method private e(Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryFragment;)Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryFragment;
    .locals 1

    .line 1309
    iget-object v0, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v0}, Lo/WifiBatteryStats$ActionBar;->g(Lo/WifiBatteryStats$ActionBar;)Lo/GateKeeperResponse;

    move-result-object v0

    invoke-static {p1, v0}, Lo/ChangeTransform;->a(Lcom/netflix/mediaclient/acquisition2/screens/AbstractNetworkFragment2;Lo/GateKeeperResponse;)V

    .line 1310
    new-instance v0, Lo/WallpaperSettingsActivity;

    invoke-direct {v0}, Lo/WallpaperSettingsActivity;-><init>()V

    invoke-static {p1, v0}, Lo/SignatureInfo;->d(Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryFragment;Lo/WallpaperSettingsActivity;)V

    .line 1311
    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar$Activity;->J()Lo/StrictJarManifest;

    move-result-object v0

    invoke-static {p1, v0}, Lo/SignatureInfo;->d(Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryFragment;Lo/StrictJarManifest;)V

    .line 1312
    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar$Activity;->f()Lo/VoiceInteractionManagerInternal;

    move-result-object v0

    invoke-static {p1, v0}, Lo/SignatureInfo;->d(Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryFragment;Lo/VoiceInteractionManagerInternal;)V

    return-object p1
.end method

.method private e(Lcom/netflix/mediaclient/acquisition2/screens/otpPhoneEntry/OTPPhoneNumberFragment;)Lcom/netflix/mediaclient/acquisition2/screens/otpPhoneEntry/OTPPhoneNumberFragment;
    .locals 1

    .line 1318
    iget-object v0, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v0}, Lo/WifiBatteryStats$ActionBar;->g(Lo/WifiBatteryStats$ActionBar;)Lo/GateKeeperResponse;

    move-result-object v0

    invoke-static {p1, v0}, Lo/ChangeTransform;->a(Lcom/netflix/mediaclient/acquisition2/screens/AbstractNetworkFragment2;Lo/GateKeeperResponse;)V

    .line 1319
    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar$Activity;->L()Lo/StrictJarVerifier;

    move-result-object v0

    invoke-static {p1, v0}, Lo/WrappedX509Certificate;->e(Lcom/netflix/mediaclient/acquisition2/screens/otpPhoneEntry/OTPPhoneNumberFragment;Lo/StrictJarVerifier;)V

    .line 1320
    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar$Activity;->f()Lo/VoiceInteractionManagerInternal;

    move-result-object v0

    invoke-static {p1, v0}, Lo/WrappedX509Certificate;->d(Lcom/netflix/mediaclient/acquisition2/screens/otpPhoneEntry/OTPPhoneNumberFragment;Lo/VoiceInteractionManagerInternal;)V

    .line 1321
    new-instance v0, Lo/WallpaperSettingsActivity;

    invoke-direct {v0}, Lo/WallpaperSettingsActivity;-><init>()V

    invoke-static {p1, v0}, Lo/WrappedX509Certificate;->c(Lcom/netflix/mediaclient/acquisition2/screens/otpPhoneEntry/OTPPhoneNumberFragment;Lo/WallpaperSettingsActivity;)V

    return-object p1
.end method

.method private e(Lcom/netflix/mediaclient/acquisition2/screens/otpSelectPhone/OTPSelectPhoneNumberFragment;)Lcom/netflix/mediaclient/acquisition2/screens/otpSelectPhone/OTPSelectPhoneNumberFragment;
    .locals 1

    .line 1328
    iget-object v0, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v0}, Lo/WifiBatteryStats$ActionBar;->g(Lo/WifiBatteryStats$ActionBar;)Lo/GateKeeperResponse;

    move-result-object v0

    invoke-static {p1, v0}, Lo/ChangeTransform;->a(Lcom/netflix/mediaclient/acquisition2/screens/AbstractNetworkFragment2;Lo/GateKeeperResponse;)V

    .line 1329
    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar$Activity;->K()Lo/AbsSavedState;

    move-result-object v0

    invoke-static {p1, v0}, Lo/AccessibilityIterators;->b(Lcom/netflix/mediaclient/acquisition2/screens/otpSelectPhone/OTPSelectPhoneNumberFragment;Lo/AbsSavedState;)V

    .line 1330
    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar$Activity;->f()Lo/VoiceInteractionManagerInternal;

    move-result-object v0

    invoke-static {p1, v0}, Lo/AccessibilityIterators;->a(Lcom/netflix/mediaclient/acquisition2/screens/otpSelectPhone/OTPSelectPhoneNumberFragment;Lo/VoiceInteractionManagerInternal;)V

    .line 1331
    new-instance v0, Lo/WallpaperSettingsActivity;

    invoke-direct {v0}, Lo/WallpaperSettingsActivity;-><init>()V

    invoke-static {p1, v0}, Lo/AccessibilityIterators;->e(Lcom/netflix/mediaclient/acquisition2/screens/otpSelectPhone/OTPSelectPhoneNumberFragment;Lo/WallpaperSettingsActivity;)V

    return-object p1
.end method

.method private e(Lcom/netflix/mediaclient/acquisition2/screens/verifyAge/VerifyAgeFragment;)Lcom/netflix/mediaclient/acquisition2/screens/verifyAge/VerifyAgeFragment;
    .locals 1

    .line 1423
    iget-object v0, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v0}, Lo/WifiBatteryStats$ActionBar;->g(Lo/WifiBatteryStats$ActionBar;)Lo/GateKeeperResponse;

    move-result-object v0

    invoke-static {p1, v0}, Lo/ChangeTransform;->a(Lcom/netflix/mediaclient/acquisition2/screens/AbstractNetworkFragment2;Lo/GateKeeperResponse;)V

    .line 1424
    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar$Activity;->ah()Lo/AnimationUtils;

    move-result-object v0

    invoke-static {p1, v0}, Lo/AccelerateDecelerateInterpolator;->a(Lcom/netflix/mediaclient/acquisition2/screens/verifyAge/VerifyAgeFragment;Lo/AnimationUtils;)V

    return-object p1
.end method

.method private e(Lcom/netflix/mediaclient/android/fragment/NetflixFrag;)Lcom/netflix/mediaclient/android/fragment/NetflixFrag;
    .locals 1

    .line 1464
    iget-object v0, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    iget-object v0, v0, Lo/WifiBatteryStats$ActionBar;->a:Lo/WifiBatteryStats;

    invoke-static {v0}, Lo/WifiBatteryStats;->h(Lo/WifiBatteryStats;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Lo/ajV;->e(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    invoke-static {p1, v0}, Lo/WebResourceResponse;->a(Lcom/netflix/mediaclient/android/fragment/NetflixFrag;Ldagger/Lazy;)V

    return-object p1
.end method

.method private e()Lo/InputBinding;
    .locals 3

    .line 816
    new-instance v0, Lo/InputBinding;

    iget-object v1, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v1}, Lo/WifiBatteryStats$ActionBar;->d(Lo/WifiBatteryStats$ActionBar;)Lcom/netflix/mediaclient/acquisition2/di/SignupModule;

    move-result-object v1

    invoke-static {v1}, Lo/SubscriptSpan;->e(Lcom/netflix/mediaclient/acquisition2/di/SignupModule;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v2}, Lo/WifiBatteryStats$ActionBar;->e(Lo/WifiBatteryStats$ActionBar;)Lo/SystemTextClassifier;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lo/InputBinding;-><init>(Landroid/content/Context;Lo/SystemTextClassifier;)V

    return-object v0
.end method

.method private e(Lo/ScaleGestureDetector;)Lo/ScaleGestureDetector;
    .locals 1

    .line 1365
    iget-object v0, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v0}, Lo/WifiBatteryStats$ActionBar;->g(Lo/WifiBatteryStats$ActionBar;)Lo/GateKeeperResponse;

    move-result-object v0

    invoke-static {p1, v0}, Lo/ChangeTransform;->a(Lcom/netflix/mediaclient/acquisition2/screens/AbstractNetworkFragment2;Lo/GateKeeperResponse;)V

    .line 1366
    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar$Activity;->U()Lo/InputEventSender;

    move-result-object v0

    invoke-static {p1, v0}, Lo/HapticFeedbackConstants;->c(Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment;Lo/InputEventSender;)V

    .line 1367
    new-instance v0, Lo/WallpaperSettingsActivity;

    invoke-direct {v0}, Lo/WallpaperSettingsActivity;-><init>()V

    invoke-static {p1, v0}, Lo/HapticFeedbackConstants;->b(Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment;Lo/WallpaperSettingsActivity;)V

    .line 1368
    new-instance v0, Lo/RasterizerSpan;

    invoke-direct {v0}, Lo/RasterizerSpan;-><init>()V

    invoke-static {p1, v0}, Lo/HapticFeedbackConstants;->b(Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment;Lo/RasterizerSpan;)V

    return-object p1
.end method

.method private f()Lo/VoiceInteractionManagerInternal;
    .locals 4

    .line 833
    new-instance v0, Lo/VoiceInteractionManagerInternal;

    iget-object v1, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v1}, Lo/WifiBatteryStats$ActionBar;->b(Lo/WifiBatteryStats$ActionBar;)Lo/TextClassificationManager;

    move-result-object v1

    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar$Activity;->e()Lo/InputBinding;

    move-result-object v2

    iget-object v3, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v3}, Lo/WifiBatteryStats$ActionBar;->g(Lo/WifiBatteryStats$ActionBar;)Lo/GateKeeperResponse;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lo/VoiceInteractionManagerInternal;-><init>(Lo/TextClassificationManager;Lo/InputBinding;Lo/GateKeeperResponse;)V

    return-object v0
.end method

.method private g()Lo/TtsEngines;
    .locals 5

    .line 842
    new-instance v0, Lo/TtsEngines;

    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar$Activity;->e()Lo/InputBinding;

    move-result-object v1

    new-instance v2, Lo/TextToSpeechService;

    invoke-direct {v2}, Lo/TextToSpeechService;-><init>()V

    new-instance v3, Lo/AndroidBidi;

    invoke-direct {v3}, Lo/AndroidBidi;-><init>()V

    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar$Activity;->j()Lo/InputMethod;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lo/TtsEngines;-><init>(Lo/InputBinding;Lo/TextToSpeechService;Lo/AndroidBidi;Lo/InputMethod;)V

    return-object v0
.end method

.method private h()Lo/SynthesisCallback;
    .locals 2

    .line 836
    new-instance v0, Lo/SynthesisCallback;

    iget-object v1, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v1}, Lo/WifiBatteryStats$ActionBar;->i(Lo/WifiBatteryStats$ActionBar;)Lo/InputMethodSession;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/SynthesisCallback;-><init>(Lo/InputMethodSession;)V

    return-object v0
.end method

.method private i()Lo/Voice;
    .locals 4

    .line 845
    new-instance v0, Lo/Voice;

    iget-object v1, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v1}, Lo/WifiBatteryStats$ActionBar;->e(Lo/WifiBatteryStats$ActionBar;)Lo/SystemTextClassifier;

    move-result-object v1

    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar$Activity;->h()Lo/SynthesisCallback;

    move-result-object v2

    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar$Activity;->g()Lo/TtsEngines;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lo/Voice;-><init>(Lo/SystemTextClassifier;Lo/SynthesisCallback;Lo/TtsEngines;)V

    return-object v0
.end method

.method private j()Lo/InputMethod;
    .locals 2

    .line 839
    new-instance v0, Lo/InputMethod;

    iget-object v1, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v1}, Lo/WifiBatteryStats$ActionBar;->i(Lo/WifiBatteryStats$ActionBar;)Lo/InputMethodSession;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/InputMethod;-><init>(Lo/InputMethodSession;)V

    return-object v0
.end method

.method private k()Lo/ArraySet;
    .locals 10

    .line 848
    new-instance v9, Lo/ArraySet;

    iget-object v0, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v0}, Lo/WifiBatteryStats$ActionBar;->c(Lo/WifiBatteryStats$ActionBar;)Lcom/netflix/android/moneyball/FlowMode;

    move-result-object v1

    iget-object v0, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v0}, Lo/WifiBatteryStats$ActionBar;->e(Lo/WifiBatteryStats$ActionBar;)Lo/SystemTextClassifier;

    move-result-object v2

    iget-object v0, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v0}, Lo/WifiBatteryStats$ActionBar;->a(Lo/WifiBatteryStats$ActionBar;)Lo/TextClassifierImpl;

    move-result-object v3

    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar$Activity;->e()Lo/InputBinding;

    move-result-object v4

    iget-object v0, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    iget-object v0, v0, Lo/WifiBatteryStats$ActionBar;->a:Lo/WifiBatteryStats;

    invoke-static {v0}, Lo/WifiBatteryStats;->b(Lo/WifiBatteryStats;)Lo/StrikethroughSpan;

    move-result-object v5

    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar$Activity;->a()Lo/SuggestionService;

    move-result-object v6

    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar$Activity;->i()Lo/Voice;

    move-result-object v7

    iget-object v0, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v0}, Lo/WifiBatteryStats$ActionBar;->i(Lo/WifiBatteryStats$ActionBar;)Lo/InputMethodSession;

    move-result-object v8

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lo/ArraySet;-><init>(Lcom/netflix/android/moneyball/FlowMode;Lo/SystemTextClassifier;Lo/TextClassifierImpl;Lo/InputBinding;Lo/Deprecated$ActionBar;Lo/SuggestionService;Lo/Voice;Lo/InputMethodSession;)V

    return-object v9
.end method

.method private l()Lo/BackgroundColorSpan;
    .locals 4

    .line 861
    new-instance v0, Lo/BackgroundColorSpan;

    iget-object v1, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v1}, Lo/WifiBatteryStats$ActionBar;->c(Lo/WifiBatteryStats$ActionBar;)Lcom/netflix/android/moneyball/FlowMode;

    move-result-object v1

    iget-object v2, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v2}, Lo/WifiBatteryStats$ActionBar;->e(Lo/WifiBatteryStats$ActionBar;)Lo/SystemTextClassifier;

    move-result-object v2

    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar$Activity;->e()Lo/InputBinding;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lo/BackgroundColorSpan;-><init>(Lcom/netflix/android/moneyball/FlowMode;Lo/SystemTextClassifier;Lo/InputBinding;)V

    return-object v0
.end method

.method private m()Lo/ParagraphStyle;
    .locals 4

    .line 851
    new-instance v0, Lo/ParagraphStyle;

    iget-object v1, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v1}, Lo/WifiBatteryStats$ActionBar;->c(Lo/WifiBatteryStats$ActionBar;)Lcom/netflix/android/moneyball/FlowMode;

    move-result-object v1

    iget-object v2, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v2}, Lo/WifiBatteryStats$ActionBar;->e(Lo/WifiBatteryStats$ActionBar;)Lo/SystemTextClassifier;

    move-result-object v2

    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar$Activity;->e()Lo/InputBinding;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lo/ParagraphStyle;-><init>(Lcom/netflix/android/moneyball/FlowMode;Lo/SystemTextClassifier;Lo/InputBinding;)V

    return-object v0
.end method

.method private n()Lo/NotificationRankingUpdate;
    .locals 4

    .line 857
    new-instance v0, Lo/NotificationRankingUpdate;

    iget-object v1, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v1}, Lo/WifiBatteryStats$ActionBar;->c(Lo/WifiBatteryStats$ActionBar;)Lcom/netflix/android/moneyball/FlowMode;

    move-result-object v1

    iget-object v2, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v2}, Lo/WifiBatteryStats$ActionBar;->e(Lo/WifiBatteryStats$ActionBar;)Lo/SystemTextClassifier;

    move-result-object v2

    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar$Activity;->e()Lo/InputBinding;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lo/NotificationRankingUpdate;-><init>(Lcom/netflix/android/moneyball/FlowMode;Lo/SystemTextClassifier;Lo/InputBinding;)V

    return-object v0
.end method

.method private o()Lo/DrawableMarginSpan;
    .locals 4

    .line 854
    new-instance v0, Lo/DrawableMarginSpan;

    iget-object v1, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v1}, Lo/WifiBatteryStats$ActionBar;->c(Lo/WifiBatteryStats$ActionBar;)Lcom/netflix/android/moneyball/FlowMode;

    move-result-object v1

    iget-object v2, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v2}, Lo/WifiBatteryStats$ActionBar;->e(Lo/WifiBatteryStats$ActionBar;)Lo/SystemTextClassifier;

    move-result-object v2

    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar$Activity;->e()Lo/InputBinding;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lo/DrawableMarginSpan;-><init>(Lcom/netflix/android/moneyball/FlowMode;Lo/SystemTextClassifier;Lo/InputBinding;)V

    return-object v0
.end method

.method private p()Lo/ScaleXSpan;
    .locals 4

    .line 870
    new-instance v0, Lo/ScaleXSpan;

    iget-object v1, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v1}, Lo/WifiBatteryStats$ActionBar;->c(Lo/WifiBatteryStats$ActionBar;)Lcom/netflix/android/moneyball/FlowMode;

    move-result-object v1

    iget-object v2, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v2}, Lo/WifiBatteryStats$ActionBar;->e(Lo/WifiBatteryStats$ActionBar;)Lo/SystemTextClassifier;

    move-result-object v2

    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar$Activity;->q()Lo/InflateException;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lo/ScaleXSpan;-><init>(Lcom/netflix/android/moneyball/FlowMode;Lo/SystemTextClassifier;Lo/InflateException;)V

    return-object v0
.end method

.method private q()Lo/InflateException;
    .locals 3

    .line 867
    new-instance v0, Lo/InflateException;

    iget-object v1, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v1}, Lo/WifiBatteryStats$ActionBar;->c(Lo/WifiBatteryStats$ActionBar;)Lcom/netflix/android/moneyball/FlowMode;

    move-result-object v1

    iget-object v2, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v2}, Lo/WifiBatteryStats$ActionBar;->e(Lo/WifiBatteryStats$ActionBar;)Lo/SystemTextClassifier;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lo/InflateException;-><init>(Lcom/netflix/android/moneyball/FlowMode;Lo/SystemTextClassifier;)V

    return-object v0
.end method

.method private r()Lo/SmartSelectionEventTracker;
    .locals 2

    .line 876
    new-instance v0, Lo/SmartSelectionEventTracker;

    iget-object v1, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    iget-object v1, v1, Lo/WifiBatteryStats$ActionBar;->a:Lo/WifiBatteryStats;

    invoke-static {v1}, Lo/WifiBatteryStats;->c(Lo/WifiBatteryStats;)Lcom/netflix/binder/generated/BinderApplicationModule;

    move-result-object v1

    invoke-static {v1}, Lo/HealthKeys;->d(Lcom/netflix/binder/generated/BinderApplicationModule;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/SmartSelectionEventTracker;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private s()Lo/HideReturnsTransformationMethod;
    .locals 4

    .line 864
    new-instance v0, Lo/HideReturnsTransformationMethod;

    iget-object v1, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v1}, Lo/WifiBatteryStats$ActionBar;->c(Lo/WifiBatteryStats$ActionBar;)Lcom/netflix/android/moneyball/FlowMode;

    move-result-object v1

    iget-object v2, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v2}, Lo/WifiBatteryStats$ActionBar;->e(Lo/WifiBatteryStats$ActionBar;)Lo/SystemTextClassifier;

    move-result-object v2

    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar$Activity;->e()Lo/InputBinding;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lo/HideReturnsTransformationMethod;-><init>(Lcom/netflix/android/moneyball/FlowMode;Lo/SystemTextClassifier;Lo/InputBinding;)V

    return-object v0
.end method

.method private t()Lo/ScrollingMovementMethod;
    .locals 5

    .line 873
    new-instance v0, Lo/ScrollingMovementMethod;

    iget-object v1, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v1}, Lo/WifiBatteryStats$ActionBar;->c(Lo/WifiBatteryStats$ActionBar;)Lcom/netflix/android/moneyball/FlowMode;

    move-result-object v1

    iget-object v2, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v2}, Lo/WifiBatteryStats$ActionBar;->e(Lo/WifiBatteryStats$ActionBar;)Lo/SystemTextClassifier;

    move-result-object v2

    new-instance v3, Lo/TextToSpeechService;

    invoke-direct {v3}, Lo/TextToSpeechService;-><init>()V

    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar$Activity;->j()Lo/InputMethod;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lo/ScrollingMovementMethod;-><init>(Lcom/netflix/android/moneyball/FlowMode;Lo/SystemTextClassifier;Lo/TextToSpeechService;Lo/InputMethod;)V

    return-object v0
.end method

.method private u()Lo/Half;
    .locals 18

    move-object/from16 v0, p0

    .line 885
    new-instance v17, Lo/Half;

    iget-object v1, v0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v1}, Lo/WifiBatteryStats$ActionBar;->c(Lo/WifiBatteryStats$ActionBar;)Lcom/netflix/android/moneyball/FlowMode;

    move-result-object v2

    iget-object v1, v0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v1}, Lo/WifiBatteryStats$ActionBar;->e(Lo/WifiBatteryStats$ActionBar;)Lo/SystemTextClassifier;

    move-result-object v3

    invoke-direct/range {p0 .. p0}, Lo/WifiBatteryStats$ActionBar$Activity;->m()Lo/ParagraphStyle;

    move-result-object v4

    iget-object v1, v0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v1}, Lo/WifiBatteryStats$ActionBar;->a(Lo/WifiBatteryStats$ActionBar;)Lo/TextClassifierImpl;

    move-result-object v5

    iget-object v1, v0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v1}, Lo/WifiBatteryStats$ActionBar;->b(Lo/WifiBatteryStats$ActionBar;)Lo/TextClassificationManager;

    move-result-object v6

    invoke-direct/range {p0 .. p0}, Lo/WifiBatteryStats$ActionBar$Activity;->e()Lo/InputBinding;

    move-result-object v7

    iget-object v1, v0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    iget-object v1, v1, Lo/WifiBatteryStats$ActionBar;->a:Lo/WifiBatteryStats;

    invoke-static {v1}, Lo/WifiBatteryStats;->b(Lo/WifiBatteryStats;)Lo/StrikethroughSpan;

    move-result-object v8

    invoke-direct/range {p0 .. p0}, Lo/WifiBatteryStats$ActionBar$Activity;->o()Lo/DrawableMarginSpan;

    move-result-object v9

    invoke-direct/range {p0 .. p0}, Lo/WifiBatteryStats$ActionBar$Activity;->n()Lo/NotificationRankingUpdate;

    move-result-object v10

    invoke-direct/range {p0 .. p0}, Lo/WifiBatteryStats$ActionBar$Activity;->a()Lo/SuggestionService;

    move-result-object v11

    invoke-direct/range {p0 .. p0}, Lo/WifiBatteryStats$ActionBar$Activity;->l()Lo/BackgroundColorSpan;

    move-result-object v12

    invoke-direct/range {p0 .. p0}, Lo/WifiBatteryStats$ActionBar$Activity;->s()Lo/HideReturnsTransformationMethod;

    move-result-object v13

    invoke-direct/range {p0 .. p0}, Lo/WifiBatteryStats$ActionBar$Activity;->p()Lo/ScaleXSpan;

    move-result-object v14

    invoke-direct/range {p0 .. p0}, Lo/WifiBatteryStats$ActionBar$Activity;->i()Lo/Voice;

    move-result-object v15

    invoke-direct/range {p0 .. p0}, Lo/WifiBatteryStats$ActionBar$Activity;->v()Lo/SentenceSuggestionsInfo;

    move-result-object v16

    move-object/from16 v1, v17

    invoke-direct/range {v1 .. v16}, Lo/Half;-><init>(Lcom/netflix/android/moneyball/FlowMode;Lo/SystemTextClassifier;Lo/ParagraphStyle;Lo/TextClassifierImpl;Lo/TextClassificationManager;Lo/InputBinding;Lo/Deprecated$ActionBar;Lo/DrawableMarginSpan;Lo/NotificationRankingUpdate;Lo/SuggestionService;Lo/BackgroundColorSpan;Lo/HideReturnsTransformationMethod;Lo/ScaleXSpan;Lo/Voice;Lo/SentenceSuggestionsInfo;)V

    return-object v17
.end method

.method private v()Lo/SentenceSuggestionsInfo;
    .locals 2

    .line 879
    new-instance v0, Lo/SentenceSuggestionsInfo;

    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar$Activity;->r()Lo/SmartSelectionEventTracker;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/SentenceSuggestionsInfo;-><init>(Lo/SmartSelectionEventTracker;)V

    return-object v0
.end method

.method private w()Lo/ContainerHelpers;
    .locals 21

    move-object/from16 v0, p0

    .line 882
    new-instance v19, Lo/ContainerHelpers;

    move-object/from16 v1, v19

    iget-object v2, v0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v2}, Lo/WifiBatteryStats$ActionBar;->c(Lo/WifiBatteryStats$ActionBar;)Lcom/netflix/android/moneyball/FlowMode;

    move-result-object v2

    iget-object v3, v0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v3}, Lo/WifiBatteryStats$ActionBar;->e(Lo/WifiBatteryStats$ActionBar;)Lo/SystemTextClassifier;

    move-result-object v3

    invoke-direct/range {p0 .. p0}, Lo/WifiBatteryStats$ActionBar$Activity;->m()Lo/ParagraphStyle;

    move-result-object v4

    iget-object v5, v0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v5}, Lo/WifiBatteryStats$ActionBar;->a(Lo/WifiBatteryStats$ActionBar;)Lo/TextClassifierImpl;

    move-result-object v5

    iget-object v6, v0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v6}, Lo/WifiBatteryStats$ActionBar;->b(Lo/WifiBatteryStats$ActionBar;)Lo/TextClassificationManager;

    move-result-object v6

    invoke-direct/range {p0 .. p0}, Lo/WifiBatteryStats$ActionBar$Activity;->e()Lo/InputBinding;

    move-result-object v7

    iget-object v8, v0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    iget-object v8, v8, Lo/WifiBatteryStats$ActionBar;->a:Lo/WifiBatteryStats;

    invoke-static {v8}, Lo/WifiBatteryStats;->b(Lo/WifiBatteryStats;)Lo/StrikethroughSpan;

    move-result-object v8

    invoke-direct/range {p0 .. p0}, Lo/WifiBatteryStats$ActionBar$Activity;->o()Lo/DrawableMarginSpan;

    move-result-object v9

    invoke-direct/range {p0 .. p0}, Lo/WifiBatteryStats$ActionBar$Activity;->n()Lo/NotificationRankingUpdate;

    move-result-object v10

    invoke-direct/range {p0 .. p0}, Lo/WifiBatteryStats$ActionBar$Activity;->a()Lo/SuggestionService;

    move-result-object v11

    invoke-direct/range {p0 .. p0}, Lo/WifiBatteryStats$ActionBar$Activity;->l()Lo/BackgroundColorSpan;

    move-result-object v12

    invoke-direct/range {p0 .. p0}, Lo/WifiBatteryStats$ActionBar$Activity;->s()Lo/HideReturnsTransformationMethod;

    move-result-object v13

    invoke-direct/range {p0 .. p0}, Lo/WifiBatteryStats$ActionBar$Activity;->p()Lo/ScaleXSpan;

    move-result-object v14

    invoke-direct/range {p0 .. p0}, Lo/WifiBatteryStats$ActionBar$Activity;->t()Lo/ScrollingMovementMethod;

    move-result-object v15

    invoke-direct/range {p0 .. p0}, Lo/WifiBatteryStats$ActionBar$Activity;->i()Lo/Voice;

    move-result-object v16

    move-object/from16 v20, v1

    iget-object v1, v0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    iget-object v1, v1, Lo/WifiBatteryStats$ActionBar;->a:Lo/WifiBatteryStats;

    invoke-static {v1}, Lo/WifiBatteryStats;->j(Lo/WifiBatteryStats;)Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {p0 .. p0}, Lo/WifiBatteryStats$ActionBar$Activity;->v()Lo/SentenceSuggestionsInfo;

    move-result-object v18

    move-object/from16 v1, v20

    invoke-direct/range {v1 .. v18}, Lo/ContainerHelpers;-><init>(Lcom/netflix/android/moneyball/FlowMode;Lo/SystemTextClassifier;Lo/ParagraphStyle;Lo/TextClassifierImpl;Lo/TextClassificationManager;Lo/InputBinding;Lo/Deprecated$ActionBar;Lo/DrawableMarginSpan;Lo/NotificationRankingUpdate;Lo/SuggestionService;Lo/BackgroundColorSpan;Lo/HideReturnsTransformationMethod;Lo/ScaleXSpan;Lo/ScrollingMovementMethod;Lo/Voice;Ljava/lang/String;Lo/SentenceSuggestionsInfo;)V

    return-object v19
.end method

.method private x()Lo/JsonWriter;
    .locals 9

    .line 888
    new-instance v8, Lo/JsonWriter;

    iget-object v0, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v0}, Lo/WifiBatteryStats$ActionBar;->c(Lo/WifiBatteryStats$ActionBar;)Lcom/netflix/android/moneyball/FlowMode;

    move-result-object v1

    iget-object v0, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v0}, Lo/WifiBatteryStats$ActionBar;->e(Lo/WifiBatteryStats$ActionBar;)Lo/SystemTextClassifier;

    move-result-object v2

    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar$Activity;->j()Lo/InputMethod;

    move-result-object v3

    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar$Activity;->e()Lo/InputBinding;

    move-result-object v4

    iget-object v0, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v0}, Lo/WifiBatteryStats$ActionBar;->a(Lo/WifiBatteryStats$ActionBar;)Lo/TextClassifierImpl;

    move-result-object v5

    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar$Activity;->a()Lo/SuggestionService;

    move-result-object v6

    iget-object v0, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    iget-object v0, v0, Lo/WifiBatteryStats$ActionBar;->a:Lo/WifiBatteryStats;

    invoke-static {v0}, Lo/WifiBatteryStats;->b(Lo/WifiBatteryStats;)Lo/StrikethroughSpan;

    move-result-object v7

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lo/JsonWriter;-><init>(Lcom/netflix/android/moneyball/FlowMode;Lo/SystemTextClassifier;Lo/InputMethod;Lo/InputBinding;Lo/TextClassifierImpl;Lo/SuggestionService;Lo/Deprecated$ActionBar;)V

    return-object v8
.end method

.method private y()Lo/MonthDisplayHelper;
    .locals 15

    .line 891
    new-instance v14, Lo/MonthDisplayHelper;

    iget-object v0, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v0}, Lo/WifiBatteryStats$ActionBar;->c(Lo/WifiBatteryStats$ActionBar;)Lcom/netflix/android/moneyball/FlowMode;

    move-result-object v1

    iget-object v0, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v0}, Lo/WifiBatteryStats$ActionBar;->e(Lo/WifiBatteryStats$ActionBar;)Lo/SystemTextClassifier;

    move-result-object v2

    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar$Activity;->m()Lo/ParagraphStyle;

    move-result-object v3

    iget-object v0, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v0}, Lo/WifiBatteryStats$ActionBar;->a(Lo/WifiBatteryStats$ActionBar;)Lo/TextClassifierImpl;

    move-result-object v4

    iget-object v0, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v0}, Lo/WifiBatteryStats$ActionBar;->b(Lo/WifiBatteryStats$ActionBar;)Lo/TextClassificationManager;

    move-result-object v5

    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar$Activity;->e()Lo/InputBinding;

    move-result-object v6

    iget-object v0, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    iget-object v0, v0, Lo/WifiBatteryStats$ActionBar;->a:Lo/WifiBatteryStats;

    invoke-static {v0}, Lo/WifiBatteryStats;->b(Lo/WifiBatteryStats;)Lo/StrikethroughSpan;

    move-result-object v7

    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar$Activity;->o()Lo/DrawableMarginSpan;

    move-result-object v8

    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar$Activity;->n()Lo/NotificationRankingUpdate;

    move-result-object v9

    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar$Activity;->a()Lo/SuggestionService;

    move-result-object v10

    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar$Activity;->l()Lo/BackgroundColorSpan;

    move-result-object v11

    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar$Activity;->s()Lo/HideReturnsTransformationMethod;

    move-result-object v12

    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar$Activity;->i()Lo/Voice;

    move-result-object v13

    move-object v0, v14

    invoke-direct/range {v0 .. v13}, Lo/MonthDisplayHelper;-><init>(Lcom/netflix/android/moneyball/FlowMode;Lo/SystemTextClassifier;Lo/ParagraphStyle;Lo/TextClassifierImpl;Lo/TextClassificationManager;Lo/InputBinding;Lo/Deprecated$ActionBar;Lo/DrawableMarginSpan;Lo/NotificationRankingUpdate;Lo/SuggestionService;Lo/BackgroundColorSpan;Lo/HideReturnsTransformationMethod;Lo/Voice;)V

    return-object v14
.end method

.method private z()Lo/CharacterPickerDialog;
    .locals 7

    .line 907
    new-instance v6, Lo/CharacterPickerDialog;

    iget-object v0, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v0}, Lo/WifiBatteryStats$ActionBar;->c(Lo/WifiBatteryStats$ActionBar;)Lcom/netflix/android/moneyball/FlowMode;

    move-result-object v1

    iget-object v0, p0, Lo/WifiBatteryStats$ActionBar$Activity;->a:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v0}, Lo/WifiBatteryStats$ActionBar;->e(Lo/WifiBatteryStats$ActionBar;)Lo/SystemTextClassifier;

    move-result-object v2

    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar$Activity;->e()Lo/InputBinding;

    move-result-object v3

    new-instance v4, Lo/TextToSpeechService;

    invoke-direct {v4}, Lo/TextToSpeechService;-><init>()V

    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar$Activity;->A()Lo/InputMethodManager;

    move-result-object v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lo/CharacterPickerDialog;-><init>(Lcom/netflix/android/moneyball/FlowMode;Lo/SystemTextClassifier;Lo/InputBinding;Lo/TextToSpeechService;Lo/InputMethodManager;)V

    return-object v6
.end method


# virtual methods
.method public a(Lcom/netflix/mediaclient/acquisition2/screens/addProfiles/AddProfilesFragment;)V
    .locals 0

    .line 1009
    invoke-direct {p0, p1}, Lo/WifiBatteryStats$ActionBar$Activity;->e(Lcom/netflix/mediaclient/acquisition2/screens/addProfiles/AddProfilesFragment;)Lcom/netflix/mediaclient/acquisition2/screens/addProfiles/AddProfilesFragment;

    return-void
.end method

.method public a(Lcom/netflix/mediaclient/acquisition2/screens/confirm/ConfirmFragment;)V
    .locals 0

    .line 1017
    invoke-direct {p0, p1}, Lo/WifiBatteryStats$ActionBar$Activity;->c(Lcom/netflix/mediaclient/acquisition2/screens/confirm/ConfirmFragment;)Lcom/netflix/mediaclient/acquisition2/screens/confirm/ConfirmFragment;

    return-void
.end method

.method public a(Lcom/netflix/mediaclient/acquisition2/screens/deviceSurvey/DeviceSurveyFragment;)V
    .locals 0

    .line 1033
    invoke-direct {p0, p1}, Lo/WifiBatteryStats$ActionBar$Activity;->c(Lcom/netflix/mediaclient/acquisition2/screens/deviceSurvey/DeviceSurveyFragment;)Lcom/netflix/mediaclient/acquisition2/screens/deviceSurvey/DeviceSurveyFragment;

    return-void
.end method

.method public a(Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;)V
    .locals 0

    .line 1061
    invoke-direct {p0, p1}, Lo/WifiBatteryStats$ActionBar$Activity;->c(Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;)Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;

    return-void
.end method

.method public a(Lcom/netflix/mediaclient/acquisition2/screens/otpSelectPhone/OTPSelectPhoneNumberFragment;)V
    .locals 0

    .line 1077
    invoke-direct {p0, p1}, Lo/WifiBatteryStats$ActionBar$Activity;->e(Lcom/netflix/mediaclient/acquisition2/screens/otpSelectPhone/OTPSelectPhoneNumberFragment;)Lcom/netflix/mediaclient/acquisition2/screens/otpSelectPhone/OTPSelectPhoneNumberFragment;

    return-void
.end method

.method public a(Lcom/netflix/mediaclient/acquisition2/screens/verifyAge/VerifyAgeFragment;)V
    .locals 0

    .line 1121
    invoke-direct {p0, p1}, Lo/WifiBatteryStats$ActionBar$Activity;->e(Lcom/netflix/mediaclient/acquisition2/screens/verifyAge/VerifyAgeFragment;)Lcom/netflix/mediaclient/acquisition2/screens/verifyAge/VerifyAgeFragment;

    return-void
.end method

.method public a(Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;)V
    .locals 0

    .line 1145
    invoke-direct {p0, p1}, Lo/WifiBatteryStats$ActionBar$Activity;->b(Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;)Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;

    return-void
.end method

.method public a(Lo/ScaleGestureDetector;)V
    .locals 0

    .line 1093
    invoke-direct {p0, p1}, Lo/WifiBatteryStats$ActionBar$Activity;->e(Lo/ScaleGestureDetector;)Lo/ScaleGestureDetector;

    return-void
.end method

.method public b(Lcom/netflix/mediaclient/acquisition2/screens/smsPaymentContext/SMSPaymentContextFragment;)V
    .locals 0

    .line 1117
    invoke-direct {p0, p1}, Lo/WifiBatteryStats$ActionBar$Activity;->c(Lcom/netflix/mediaclient/acquisition2/screens/smsPaymentContext/SMSPaymentContextFragment;)Lcom/netflix/mediaclient/acquisition2/screens/smsPaymentContext/SMSPaymentContextFragment;

    return-void
.end method

.method public b(Lcom/netflix/mediaclient/android/fragment/NetflixFrag;)V
    .locals 0

    .line 1141
    invoke-direct {p0, p1}, Lo/WifiBatteryStats$ActionBar$Activity;->e(Lcom/netflix/mediaclient/android/fragment/NetflixFrag;)Lcom/netflix/mediaclient/android/fragment/NetflixFrag;

    return-void
.end method

.method public b(Lo/LogPrinter;)V
    .locals 0

    .line 1037
    invoke-direct {p0, p1}, Lo/WifiBatteryStats$ActionBar$Activity;->d(Lo/LogPrinter;)Lo/LogPrinter;

    return-void
.end method

.method public b(Lo/Sl;)V
    .locals 0

    .line 1153
    invoke-direct {p0, p1}, Lo/WifiBatteryStats$ActionBar$Activity;->c(Lo/Sl;)Lo/Sl;

    return-void
.end method

.method public c(Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardPaymentFragment;)V
    .locals 0

    .line 1045
    invoke-direct {p0, p1}, Lo/WifiBatteryStats$ActionBar$Activity;->b(Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardPaymentFragment;)Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardPaymentFragment;

    return-void
.end method

.method public c(Lcom/netflix/mediaclient/acquisition2/screens/otpPhoneEntry/OTPPhoneNumberFragment;)V
    .locals 0

    .line 1073
    invoke-direct {p0, p1}, Lo/WifiBatteryStats$ActionBar$Activity;->e(Lcom/netflix/mediaclient/acquisition2/screens/otpPhoneEntry/OTPPhoneNumberFragment;)Lcom/netflix/mediaclient/acquisition2/screens/otpPhoneEntry/OTPPhoneNumberFragment;

    return-void
.end method

.method public c(Lcom/netflix/mediaclient/acquisition2/screens/paymentContext/PaymentContextFragment;)V
    .locals 0

    .line 1081
    invoke-direct {p0, p1}, Lo/WifiBatteryStats$ActionBar$Activity;->b(Lcom/netflix/mediaclient/acquisition2/screens/paymentContext/PaymentContextFragment;)Lcom/netflix/mediaclient/acquisition2/screens/paymentContext/PaymentContextFragment;

    return-void
.end method

.method public c(Lcom/netflix/mediaclient/acquisition2/screens/planSelectionContext/PlanContextFragment;)V
    .locals 0

    .line 1089
    invoke-direct {p0, p1}, Lo/WifiBatteryStats$ActionBar$Activity;->a(Lcom/netflix/mediaclient/acquisition2/screens/planSelectionContext/PlanContextFragment;)Lcom/netflix/mediaclient/acquisition2/screens/planSelectionContext/PlanContextFragment;

    return-void
.end method

.method public c(Lcom/netflix/mediaclient/acquisition2/screens/replayRequest/ReplayRequestFragment;)V
    .locals 0

    .line 1109
    invoke-direct {p0, p1}, Lo/WifiBatteryStats$ActionBar$Activity;->b(Lcom/netflix/mediaclient/acquisition2/screens/replayRequest/ReplayRequestFragment;)Lcom/netflix/mediaclient/acquisition2/screens/replayRequest/ReplayRequestFragment;

    return-void
.end method

.method public c(Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryCardFragment;)V
    .locals 0

    .line 1133
    invoke-direct {p0, p1}, Lo/WifiBatteryStats$ActionBar$Activity;->a(Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryCardFragment;)Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryCardFragment;

    return-void
.end method

.method public c(Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;)V
    .locals 0

    .line 1161
    invoke-direct {p0, p1}, Lo/WifiBatteryStats$ActionBar$Activity;->a(Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;)Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;

    return-void
.end method

.method public d(Lcom/netflix/mediaclient/acquisition2/screens/changeCardProcessingType/ChangeCardProcessingTypeFragment;)V
    .locals 0

    .line 1013
    invoke-direct {p0, p1}, Lo/WifiBatteryStats$ActionBar$Activity;->e(Lcom/netflix/mediaclient/acquisition2/screens/changeCardProcessingType/ChangeCardProcessingTypeFragment;)Lcom/netflix/mediaclient/acquisition2/screens/changeCardProcessingType/ChangeCardProcessingTypeFragment;

    return-void
.end method

.method public d(Lcom/netflix/mediaclient/acquisition2/screens/mopWebView/MopWebViewFragment;)V
    .locals 0

    .line 1057
    invoke-direct {p0, p1}, Lo/WifiBatteryStats$ActionBar$Activity;->e(Lcom/netflix/mediaclient/acquisition2/screens/mopWebView/MopWebViewFragment;)Lcom/netflix/mediaclient/acquisition2/screens/mopWebView/MopWebViewFragment;

    return-void
.end method

.method public d(Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryFragment;)V
    .locals 0

    .line 1069
    invoke-direct {p0, p1}, Lo/WifiBatteryStats$ActionBar$Activity;->e(Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryFragment;)Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryFragment;

    return-void
.end method

.method public d(Lcom/netflix/mediaclient/acquisition2/screens/registration/RegistrationFragment;)V
    .locals 0

    .line 1105
    invoke-direct {p0, p1}, Lo/WifiBatteryStats$ActionBar$Activity;->a(Lcom/netflix/mediaclient/acquisition2/screens/registration/RegistrationFragment;)Lcom/netflix/mediaclient/acquisition2/screens/registration/RegistrationFragment;

    return-void
.end method

.method public d(Lcom/netflix/mediaclient/acquisition2/screens/registrationContext/RegistrationContextFragment;)V
    .locals 0

    .line 1101
    invoke-direct {p0, p1}, Lo/WifiBatteryStats$ActionBar$Activity;->a(Lcom/netflix/mediaclient/acquisition2/screens/registrationContext/RegistrationContextFragment;)Lcom/netflix/mediaclient/acquisition2/screens/registrationContext/RegistrationContextFragment;

    return-void
.end method

.method public d(Lcom/netflix/mediaclient/acquisition2/screens/verifyCard/VerifyCardFragment;)V
    .locals 0

    .line 1129
    invoke-direct {p0, p1}, Lo/WifiBatteryStats$ActionBar$Activity;->b(Lcom/netflix/mediaclient/acquisition2/screens/verifyCard/VerifyCardFragment;)Lcom/netflix/mediaclient/acquisition2/screens/verifyCard/VerifyCardFragment;

    return-void
.end method

.method public d(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;)V
    .locals 0

    .line 1157
    invoke-direct {p0, p1}, Lo/WifiBatteryStats$ActionBar$Activity;->a(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;)Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionFragment_Ab18161;

    return-void
.end method

.method public e(Lcom/netflix/mediaclient/acquisition2/screens/dcb/DCBPaymentFragment;)V
    .locals 0

    .line 1029
    invoke-direct {p0, p1}, Lo/WifiBatteryStats$ActionBar$Activity;->b(Lcom/netflix/mediaclient/acquisition2/screens/dcb/DCBPaymentFragment;)Lcom/netflix/mediaclient/acquisition2/screens/dcb/DCBPaymentFragment;

    return-void
.end method

.method public e(Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardStartMembershipFragment;)V
    .locals 0

    .line 1049
    invoke-direct {p0, p1}, Lo/WifiBatteryStats$ActionBar$Activity;->c(Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardStartMembershipFragment;)Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardStartMembershipFragment;

    return-void
.end method

.method public e(Lcom/netflix/mediaclient/acquisition2/screens/maturityPin/MaturityPinFragment;)V
    .locals 0

    .line 1053
    invoke-direct {p0, p1}, Lo/WifiBatteryStats$ActionBar$Activity;->c(Lcom/netflix/mediaclient/acquisition2/screens/maturityPin/MaturityPinFragment;)Lcom/netflix/mediaclient/acquisition2/screens/maturityPin/MaturityPinFragment;

    return-void
.end method

.method public e(Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment;)V
    .locals 0

    .line 1065
    invoke-direct {p0, p1}, Lo/WifiBatteryStats$ActionBar$Activity;->c(Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment;)Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment;

    return-void
.end method

.method public e(Lcom/netflix/mediaclient/acquisition2/screens/paypal/PayPalFragment;)V
    .locals 0

    .line 1085
    invoke-direct {p0, p1}, Lo/WifiBatteryStats$ActionBar$Activity;->a(Lcom/netflix/mediaclient/acquisition2/screens/paypal/PayPalFragment;)Lcom/netflix/mediaclient/acquisition2/screens/paypal/PayPalFragment;

    return-void
.end method

.method public e(Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment;)V
    .locals 0

    .line 1097
    invoke-direct {p0, p1}, Lo/WifiBatteryStats$ActionBar$Activity;->a(Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment;)Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment;

    return-void
.end method

.method public e(Lcom/netflix/mediaclient/acquisition2/screens/returningMemberContext/ReturningMemberContextFragment;)V
    .locals 0

    .line 1113
    invoke-direct {p0, p1}, Lo/WifiBatteryStats$ActionBar$Activity;->b(Lcom/netflix/mediaclient/acquisition2/screens/returningMemberContext/ReturningMemberContextFragment;)Lcom/netflix/mediaclient/acquisition2/screens/returningMemberContext/ReturningMemberContextFragment;

    return-void
.end method

.method public e(Lcom/netflix/mediaclient/acquisition2/screens/verifyCardContext/VerifyCardContextFragment;)V
    .locals 0

    .line 1125
    invoke-direct {p0, p1}, Lo/WifiBatteryStats$ActionBar$Activity;->b(Lcom/netflix/mediaclient/acquisition2/screens/verifyCardContext/VerifyCardContextFragment;)Lcom/netflix/mediaclient/acquisition2/screens/verifyCardContext/VerifyCardContextFragment;

    return-void
.end method

.method public e(Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryFragment;)V
    .locals 0

    .line 1137
    invoke-direct {p0, p1}, Lo/WifiBatteryStats$ActionBar$Activity;->c(Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryFragment;)Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryFragment;

    return-void
.end method

.method public e(Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;)V
    .locals 0

    .line 1149
    invoke-direct {p0, p1}, Lo/WifiBatteryStats$ActionBar$Activity;->c(Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;)Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;

    return-void
.end method

.method public e(Lo/DataUnit;)V
    .locals 0

    .line 1025
    invoke-direct {p0, p1}, Lo/WifiBatteryStats$ActionBar$Activity;->a(Lo/DataUnit;)Lo/DataUnit;

    return-void
.end method

.method public e(Lo/DebugUtils;)V
    .locals 0

    .line 1021
    invoke-direct {p0, p1}, Lo/WifiBatteryStats$ActionBar$Activity;->c(Lo/DebugUtils;)Lo/DebugUtils;

    return-void
.end method

.method public e(Lo/LongSparseArray;)V
    .locals 0

    .line 1041
    invoke-direct {p0, p1}, Lo/WifiBatteryStats$ActionBar$Activity;->c(Lo/LongSparseArray;)Lo/LongSparseArray;

    return-void
.end method
