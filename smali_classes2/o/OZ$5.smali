.class public final Lo/OZ$5;
.super Lo/State$StateListAnimator;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/OZ;-><init>(Lo/UnicodeScript;Lio/reactivex/subjects/PublishSubject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/State$StateListAnimator<",
        "Lo/Pa;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lo/State$StateListAnimator;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lo/Pa;Lo/Pa;)Z
    .locals 1

    const-string v0, "oldItem"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newItem"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-static {p1, p2}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public synthetic c(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 14
    check-cast p1, Lo/Pa;

    check-cast p2, Lo/Pa;

    invoke-virtual {p0, p1, p2}, Lo/OZ$5;->a(Lo/Pa;Lo/Pa;)Z

    move-result p1

    return p1
.end method

.method public d(Lo/Pa;Lo/Pa;)Z
    .locals 1

    const-string v0, "oldItem"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newItem"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-virtual {p1}, Lo/Pa;->messageGuid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lo/Pa;->messageGuid()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public synthetic e(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 14
    check-cast p1, Lo/Pa;

    check-cast p2, Lo/Pa;

    invoke-virtual {p0, p1, p2}, Lo/OZ$5;->d(Lo/Pa;Lo/Pa;)Z

    move-result p1

    return p1
.end method
