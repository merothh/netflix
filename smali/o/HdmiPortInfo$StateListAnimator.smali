.class Lo/HdmiPortInfo$StateListAnimator;
.super Lo/TaskSingleDrainer;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/HdmiPortInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StateListAnimator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/TaskSingleDrainer<",
        "Lo/CompatibilityInfo<",
        "Lo/LegacyRequestMapper;",
        ">;",
        "Lo/CompatibilityInfo<",
        "Lo/LegacyRequestMapper;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic e:Lo/HdmiPortInfo;


# direct methods
.method private constructor <init>(Lo/HdmiPortInfo;Lo/HdmiPortInfo$ActionBar;)V
    .locals 0

    .line 304
    iput-object p1, p0, Lo/HdmiPortInfo$StateListAnimator;->e:Lo/HdmiPortInfo;

    .line 305
    invoke-direct {p0, p2}, Lo/TaskSingleDrainer;-><init>(Lo/BrightnessChangeEvent;)V

    return-void
.end method

.method synthetic constructor <init>(Lo/HdmiPortInfo;Lo/HdmiPortInfo$ActionBar;Lo/HdmiPortInfo$3;)V
    .locals 0

    .line 300
    invoke-direct {p0, p1, p2}, Lo/HdmiPortInfo$StateListAnimator;-><init>(Lo/HdmiPortInfo;Lo/HdmiPortInfo$ActionBar;)V

    return-void
.end method


# virtual methods
.method protected a(Lo/CompatibilityInfo;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/CompatibilityInfo<",
            "Lo/LegacyRequestMapper;",
            ">;I)V"
        }
    .end annotation

    .line 312
    invoke-static {p2}, Lo/HdmiPortInfo$StateListAnimator;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 315
    :cond_0
    invoke-virtual {p0}, Lo/HdmiPortInfo$StateListAnimator;->d()Lo/BrightnessChangeEvent;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lo/BrightnessChangeEvent;->d(Ljava/lang/Object;I)V

    return-void
.end method

.method protected synthetic c(Ljava/lang/Object;I)V
    .locals 0

    .line 300
    check-cast p1, Lo/CompatibilityInfo;

    invoke-virtual {p0, p1, p2}, Lo/HdmiPortInfo$StateListAnimator;->a(Lo/CompatibilityInfo;I)V

    return-void
.end method
