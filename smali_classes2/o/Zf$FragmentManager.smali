.class final Lo/Zf$FragmentManager;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/Function;


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
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "TT;TR;>;"
    }
.end annotation


# static fields
.field public static final c:Lo/Zf$FragmentManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/Zf$FragmentManager;

    invoke-direct {v0}, Lo/Zf$FragmentManager;-><init>()V

    sput-object v0, Lo/Zf$FragmentManager;->c:Lo/Zf$FragmentManager;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lo/Tk;)Lo/Zf$TaskDescription;
    .locals 3

    const-string v0, "result"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    sget-object v0, Lo/Tk$Activity;->a:Lo/Tk$Activity;

    invoke-static {p1, v0}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    new-instance p1, Lo/Zf$TaskDescription;

    const/4 v0, 0x0

    invoke-direct {p1, v0, v2, v1, v2}, Lo/Zf$TaskDescription;-><init>(ILcom/netflix/mediaclient/android/app/Status;ILo/amc;)V

    goto :goto_0

    .line 132
    :cond_0
    sget-object v0, Lo/Tk$Application;->b:Lo/Tk$Application;

    invoke-static {p1, v0}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Lo/Zf$TaskDescription;

    invoke-direct {p1, v1, v2, v1, v2}, Lo/Zf$TaskDescription;-><init>(ILcom/netflix/mediaclient/android/app/Status;ILo/amc;)V

    goto :goto_0

    .line 133
    :cond_1
    new-instance p1, Lo/Zf$TaskDescription;

    const/4 v0, 0x1

    invoke-direct {p1, v0, v2, v1, v2}, Lo/Zf$TaskDescription;-><init>(ILcom/netflix/mediaclient/android/app/Status;ILo/amc;)V

    :goto_0
    return-object p1
.end method

.method public synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 32
    check-cast p1, Lo/Tk;

    invoke-virtual {p0, p1}, Lo/Zf$FragmentManager;->a(Lo/Tk;)Lo/Zf$TaskDescription;

    move-result-object p1

    return-object p1
.end method
