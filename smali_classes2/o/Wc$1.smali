.class final Lo/Wc$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Wc;-><init>(Lo/Vh;Lio/reactivex/Observable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Predicate<",
        "Lo/UP;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lo/Wc;


# direct methods
.method constructor <init>(Lo/Wc;)V
    .locals 0

    iput-object p1, p0, Lo/Wc$1;->a:Lo/Wc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final e(Lo/UP;)Z
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    instance-of v0, p1, Lo/UP$Drawable;

    if-nez v0, :cond_0

    instance-of v0, p1, Lo/UP$VoiceInteractor;

    if-nez v0, :cond_0

    instance-of v0, p1, Lo/UP$CursorFactory;

    if-nez v0, :cond_0

    instance-of p1, p1, Lo/UP$Application;

    if-eqz p1, :cond_1

    :cond_0
    iget-object p1, p0, Lo/Wc$1;->a:Lo/Wc;

    invoke-static {p1}, Lo/Wc;->a(Lo/Wc;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public synthetic test(Ljava/lang/Object;)Z
    .locals 0

    .line 14
    check-cast p1, Lo/UP;

    invoke-virtual {p0, p1}, Lo/Wc$1;->e(Lo/UP;)Z

    move-result p1

    return p1
.end method
