.class public final Lo/Og$StateListAnimator;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Og;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StateListAnimator"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lo/amc;)V
    .locals 0

    .line 113
    invoke-direct {p0}, Lo/Og$StateListAnimator;-><init>()V

    return-void
.end method


# virtual methods
.method public final e()Lo/Og;
    .locals 1

    .line 129
    sget-object v0, Lo/TextViewMetrics;->e:Lo/TextViewMetrics;

    .line 173
    const-class v0, Lo/Og;

    invoke-static {v0}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/Og;

    return-object v0
.end method

.method public final e(Lo/alA;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/alA<",
            "-",
            "Lo/Og$Application<",
            "Lo/akj;",
            "Lo/akj;",
            ">;",
            "Lo/akj;",
            ">;)V"
        }
    .end annotation

    const-string v0, "defaultNavigate"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    const-class v0, Lo/Og;

    .line 121
    new-instance v1, Lo/Og;

    invoke-direct {v1, p1}, Lo/Og;-><init>(Lo/alA;)V

    .line 119
    invoke-static {v0, v1}, Lo/TextViewMetrics;->b(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method
