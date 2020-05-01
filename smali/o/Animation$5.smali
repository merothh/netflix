.class Lo/Animation$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/Animation$TaskDescription;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Animation;->c(Lo/ViewOverlay$StateListAnimator;I)Lo/ViewOverlay$Application;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/Animation$TaskDescription<",
        "Lo/ViewOverlay$Application;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lo/Animation;


# direct methods
.method constructor <init>(Lo/Animation;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lo/Animation$5;->b:Lo/Animation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lo/ViewOverlay$Application;)Z
    .locals 0

    .line 161
    invoke-virtual {p1}, Lo/ViewOverlay$Application;->c()Z

    move-result p1

    return p1
.end method

.method public b(Lo/ViewOverlay$Application;)I
    .locals 0

    .line 156
    invoke-virtual {p1}, Lo/ViewOverlay$Application;->e()I

    move-result p1

    return p1
.end method

.method public synthetic d(Ljava/lang/Object;)Z
    .locals 0

    .line 153
    check-cast p1, Lo/ViewOverlay$Application;

    invoke-virtual {p0, p1}, Lo/Animation$5;->a(Lo/ViewOverlay$Application;)Z

    move-result p1

    return p1
.end method

.method public synthetic e(Ljava/lang/Object;)I
    .locals 0

    .line 153
    check-cast p1, Lo/ViewOverlay$Application;

    invoke-virtual {p0, p1}, Lo/Animation$5;->b(Lo/ViewOverlay$Application;)I

    move-result p1

    return p1
.end method
