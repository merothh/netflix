.class public final Lo/FL$StateListAnimator$Activity;
.super Lo/cq;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/FL$StateListAnimator;->c(Ljava/lang/String;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/hW;

.field final synthetic b:Lkotlin/jvm/internal/Ref$BooleanRef;

.field final synthetic c:I

.field final synthetic d:Lkotlin/jvm/internal/Ref$IntRef;

.field final synthetic e:Lkotlin/jvm/internal/Ref$IntRef;

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:I

.field final synthetic h:I

.field final synthetic i:I

.field final synthetic j:Ljava/lang/String;


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$IntRef;Lo/hW;IIIILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lo/FL$StateListAnimator$Activity;->b:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object p2, p0, Lo/FL$StateListAnimator$Activity;->d:Lkotlin/jvm/internal/Ref$IntRef;

    iput-object p3, p0, Lo/FL$StateListAnimator$Activity;->e:Lkotlin/jvm/internal/Ref$IntRef;

    iput-object p4, p0, Lo/FL$StateListAnimator$Activity;->a:Lo/hW;

    iput p5, p0, Lo/FL$StateListAnimator$Activity;->c:I

    iput p6, p0, Lo/FL$StateListAnimator$Activity;->i:I

    iput p7, p0, Lo/FL$StateListAnimator$Activity;->g:I

    iput p8, p0, Lo/FL$StateListAnimator$Activity;->h:I

    iput-object p9, p0, Lo/FL$StateListAnimator$Activity;->j:Ljava/lang/String;

    iput-object p10, p0, Lo/FL$StateListAnimator$Activity;->f:Ljava/lang/String;

    .line 104
    invoke-direct {p0}, Lo/cq;-><init>()V

    return-void
.end method


# virtual methods
.method public final c()V
    .locals 6

    .line 108
    iget-object v0, p0, Lo/FL$StateListAnimator$Activity;->b:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-boolean v0, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->d:Z

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lo/FL$StateListAnimator$Activity;->b:Lkotlin/jvm/internal/Ref$BooleanRef;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->d:Z

    .line 112
    iget-object v0, p0, Lo/FL$StateListAnimator$Activity;->d:Lkotlin/jvm/internal/Ref$IntRef;

    iget v1, v0, Lkotlin/jvm/internal/Ref$IntRef;->e:I

    add-int/lit8 v1, v1, 0xa

    iput v1, v0, Lkotlin/jvm/internal/Ref$IntRef;->e:I

    .line 114
    iget-object v0, p0, Lo/FL$StateListAnimator$Activity;->e:Lkotlin/jvm/internal/Ref$IntRef;

    iget v1, p0, Lo/FL$StateListAnimator$Activity;->g:I

    iput v1, v0, Lkotlin/jvm/internal/Ref$IntRef;->e:I

    .line 116
    iget-object v0, p0, Lo/FL$StateListAnimator$Activity;->a:Lo/hW;

    .line 117
    new-instance v1, Lo/OptionalValidators;

    .line 119
    iget-object v2, p0, Lo/FL$StateListAnimator$Activity;->j:Ljava/lang/String;

    .line 120
    iget-object v3, p0, Lo/FL$StateListAnimator$Activity;->d:Lkotlin/jvm/internal/Ref$IntRef;

    iget v3, v3, Lkotlin/jvm/internal/Ref$IntRef;->e:I

    .line 121
    iget-object v4, p0, Lo/FL$StateListAnimator$Activity;->e:Lkotlin/jvm/internal/Ref$IntRef;

    iget v4, v4, Lkotlin/jvm/internal/Ref$IntRef;->e:I

    .line 122
    iget v5, p0, Lo/FL$StateListAnimator$Activity;->c:I

    .line 118
    invoke-static {v2, v3, v4, v5}, Lo/SEService;->a(Ljava/lang/String;III)Lo/TextInputTimePickerView;

    move-result-object v2

    const-string v3, "CmpUtils.buildBasePqlFor\u2026                        )"

    invoke-static {v2, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    invoke-direct {v1, v2}, Lo/OptionalValidators;-><init>(Lo/TextInputTimePickerView;)V

    check-cast v1, Lo/SettingsValidators;

    .line 125
    new-instance v2, Lo/FL$StateListAnimator$Activity$1;

    invoke-direct {v2, p0}, Lo/FL$StateListAnimator$Activity$1;-><init>(Lo/FL$StateListAnimator$Activity;)V

    check-cast v2, Lo/ci;

    .line 116
    invoke-interface {v0, v1, v2}, Lo/hW;->d(Lo/SettingsValidators;Lo/ci;)V

    :cond_0
    return-void
.end method

.method public e(ZLcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    const-string v0, "res"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    invoke-super {p0, p1, p2}, Lo/cq;->e(ZLcom/netflix/mediaclient/android/app/Status;)V

    if-eqz p1, :cond_0

    .line 147
    sget-object p1, Lo/FL;->c:Lo/FL$StateListAnimator;

    check-cast p1, Lo/MessagePdu;

    .line 148
    invoke-virtual {p0}, Lo/FL$StateListAnimator$Activity;->c()V

    goto :goto_0

    .line 150
    :cond_0
    sget-object p1, Lo/FL;->c:Lo/FL$StateListAnimator;

    check-cast p1, Lo/MessagePdu;

    .line 151
    invoke-static {}, Lo/FL;->e()Ljava/util/HashSet;

    move-result-object p1

    iget-object p2, p0, Lo/FL$StateListAnimator$Activity;->f:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method
