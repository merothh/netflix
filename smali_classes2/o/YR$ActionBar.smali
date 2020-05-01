.class final Lo/YR$ActionBar;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/YR;->b(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/BC;)Lio/reactivex/Observable;
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
.field public static final a:Lo/YR$ActionBar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/YR$ActionBar;

    invoke-direct {v0}, Lo/YR$ActionBar;-><init>()V

    sput-object v0, Lo/YR$ActionBar;->a:Lo/YR$ActionBar;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final c(Lo/Tk;)Z
    .locals 1

    const-string v0, "result"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
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

    .line 13
    check-cast p1, Lo/Tk;

    invoke-virtual {p0, p1}, Lo/YR$ActionBar;->c(Lo/Tk;)Z

    move-result p1

    return p1
.end method
