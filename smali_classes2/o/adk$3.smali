.class final Lo/adk$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/Cg;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/adk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 847
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)V
    .locals 1

    .line 850
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    const-string v0, "SPY-18205 BadTokenException in AndroidUtils.showToast"

    invoke-interface {p1, v0}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    return-void
.end method
