.class final Lo/Zf$Fragment;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Zf;->a(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/BC;)Lio/reactivex/Observable;
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
        "Lo/Tk;",
        ">;"
    }
.end annotation


# static fields
.field public static final c:Lo/Zf$Fragment;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/Zf$Fragment;

    invoke-direct {v0}, Lo/Zf$Fragment;-><init>()V

    sput-object v0, Lo/Zf$Fragment;->c:Lo/Zf$Fragment;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final d(Lo/Tk;)Z
    .locals 1

    const-string v0, "result"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    instance-of v0, p1, Lo/Tk$TaskDescription;

    if-eqz v0, :cond_1

    check-cast p1, Lo/Tk$TaskDescription;

    invoke-virtual {p1}, Lo/Tk$TaskDescription;->a()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public synthetic test(Ljava/lang/Object;)Z
    .locals 0

    .line 32
    check-cast p1, Lo/Tk;

    invoke-virtual {p0, p1}, Lo/Zf$Fragment;->d(Lo/Tk;)Z

    move-result p1

    return p1
.end method
