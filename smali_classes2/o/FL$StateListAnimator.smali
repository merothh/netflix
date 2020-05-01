.class public final Lo/FL$StateListAnimator;
.super Lo/MessagePdu;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/FL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StateListAnimator"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const-string v0, "DetailsPageRepository_Ab18255"

    .line 36
    invoke-direct {p0, v0}, Lo/MessagePdu;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(Lo/amc;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lo/FL$StateListAnimator;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 3

    const-string v0, "parentVideoId"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    new-instance v0, Lo/Zx;

    invoke-direct {v0}, Lo/Zx;-><init>()V

    invoke-virtual {v0}, Lo/Zx;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/hW;

    if-eqz v0, :cond_0

    .line 166
    new-instance v1, Lo/OptionalValidators;

    .line 167
    invoke-static {p1}, Lo/SEService;->i(Ljava/lang/String;)Lo/TextInputTimePickerView;

    move-result-object p1

    const-string v2, "CmpUtils.buildBasePqlFor\u2026oId\n                    )"

    invoke-static {p1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 166
    invoke-direct {v1, p1}, Lo/OptionalValidators;-><init>(Lo/TextInputTimePickerView;)V

    check-cast v1, Lo/SettingsValidators;

    .line 171
    new-instance p1, Lo/FL$StateListAnimator$Application;

    invoke-direct {p1}, Lo/FL$StateListAnimator$Application;-><init>()V

    check-cast p1, Lo/ci;

    .line 165
    invoke-interface {v0, v1, p1}, Lo/hW;->d(Lo/SettingsValidators;Lo/ci;)V

    :cond_0
    return-void
.end method

.method public final c(Ljava/lang/String;III)V
    .locals 14

    move-object v9, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    const-string v0, "lolomoId"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    if-ltz v6, :cond_4

    if-ltz v7, :cond_4

    if-ltz v8, :cond_4

    if-le v6, v7, :cond_0

    goto/16 :goto_1

    .line 65
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 66
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v0, "StringBuilder(lolomoId)\n\u2026              .toString()"

    invoke-static {v10, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    invoke-static {}, Lo/FL;->e()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 74
    move-object v0, p0

    check-cast v0, Lo/FL$StateListAnimator;

    check-cast v0, Lo/MessagePdu;

    .line 75
    new-instance v0, Lo/Zx;

    invoke-direct {v0}, Lo/Zx;-><init>()V

    invoke-virtual {v0}, Lo/Zx;->f()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lo/hW;

    if-eqz v11, :cond_3

    .line 81
    new-instance v2, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    iput v6, v2, Lkotlin/jvm/internal/Ref$IntRef;->e:I

    .line 82
    new-instance v3, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v3}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    iput v7, v3, Lkotlin/jvm/internal/Ref$IntRef;->e:I

    const/4 v0, 0x5

    .line 85
    invoke-static {v8, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 86
    new-instance v1, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, v1, Lkotlin/jvm/internal/Ref$BooleanRef;->d:Z

    .line 89
    iget v0, v3, Lkotlin/jvm/internal/Ref$IntRef;->e:I

    iget v4, v2, Lkotlin/jvm/internal/Ref$IntRef;->e:I

    sub-int/2addr v0, v4

    const/4 v4, 0x1

    add-int/2addr v0, v4

    const/16 v12, 0xa

    if-le v0, v12, :cond_1

    .line 90
    iget v0, v2, Lkotlin/jvm/internal/Ref$IntRef;->e:I

    add-int/2addr v0, v12

    sub-int/2addr v0, v4

    iput v0, v3, Lkotlin/jvm/internal/Ref$IntRef;->e:I

    .line 92
    iput-boolean v4, v1, Lkotlin/jvm/internal/Ref$BooleanRef;->d:Z

    .line 96
    :cond_1
    new-instance v0, Lo/OptionalValidators;

    .line 99
    iget v4, v2, Lkotlin/jvm/internal/Ref$IntRef;->e:I

    .line 100
    iget v12, v3, Lkotlin/jvm/internal/Ref$IntRef;->e:I

    .line 97
    invoke-static {p1, v4, v12, v5}, Lo/SEService;->a(Ljava/lang/String;III)Lo/TextInputTimePickerView;

    move-result-object v4

    const-string v12, "CmpUtils.buildBasePqlFor\u2026                        )"

    invoke-static {v4, v12}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    invoke-direct {v0, v4}, Lo/OptionalValidators;-><init>(Lo/TextInputTimePickerView;)V

    move-object v12, v0

    check-cast v12, Lo/SettingsValidators;

    .line 104
    new-instance v13, Lo/FL$StateListAnimator$Activity;

    move-object v0, v13

    move-object v4, v11

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move-object v9, p1

    invoke-direct/range {v0 .. v10}, Lo/FL$StateListAnimator$Activity;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$IntRef;Lo/hW;IIIILjava/lang/String;Ljava/lang/String;)V

    check-cast v13, Lo/ci;

    .line 95
    invoke-interface {v11, v12, v13}, Lo/hW;->d(Lo/SettingsValidators;Lo/ci;)V

    goto :goto_0

    .line 158
    :cond_2
    move-object v0, p0

    check-cast v0, Lo/FL$StateListAnimator;

    check-cast v0, Lo/MessagePdu;

    :cond_3
    :goto_0
    return-void

    .line 57
    :cond_4
    :goto_1
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lolomoId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " fromLomo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " toLomo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " toVideo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lo/SpinnerAdapter;->e(Ljava/lang/String;)V

    .line 59
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    .line 60
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, p0

    check-cast v2, Lo/FL$StateListAnimator;

    invoke-virtual {v2}, Lo/FL$StateListAnimator;->getLogTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": Invalid params inside prefetchPrimaryDetailsDataForLolomo()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    return-void
.end method
