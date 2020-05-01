.class final Lo/Zf$Application;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Zf;->b(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/BC;Ljava/lang/Long;)Lio/reactivex/Observable;
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
        "TT;",
        "Lio/reactivex/ObservableSource<",
        "+TR;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lo/BC;

.field final synthetic b:Lo/Zf;

.field final synthetic c:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

.field final synthetic d:Ljava/lang/Long;

.field final synthetic e:Lo/Am;


# direct methods
.method constructor <init>(Lo/Zf;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/Am;Lo/BC;Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lo/Zf$Application;->b:Lo/Zf;

    iput-object p2, p0, Lo/Zf$Application;->c:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iput-object p3, p0, Lo/Zf$Application;->e:Lo/Am;

    iput-object p4, p0, Lo/Zf$Application;->a:Lo/BC;

    iput-object p5, p0, Lo/Zf$Application;->d:Ljava/lang/Long;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lo/Zf$TaskDescription;)Lio/reactivex/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/Zf$TaskDescription;",
            ")",
            "Lio/reactivex/Observable<",
            "Lo/Zf$TaskDescription;",
            ">;"
        }
    .end annotation

    const-string v0, "result"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    invoke-virtual {p1}, Lo/Zf$TaskDescription;->c()I

    move-result v0

    if-nez v0, :cond_0

    .line 92
    iget-object p1, p0, Lo/Zf$Application;->b:Lo/Zf;

    .line 93
    iget-object v0, p0, Lo/Zf$Application;->c:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 94
    iget-object v1, p0, Lo/Zf$Application;->e:Lo/Am;

    .line 95
    iget-object v2, p0, Lo/Zf$Application;->a:Lo/BC;

    .line 96
    iget-object v3, p0, Lo/Zf$Application;->d:Ljava/lang/Long;

    .line 92
    invoke-static {p1, v0, v1, v2, v3}, Lo/Zf;->e(Lo/Zf;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/Am;Lo/BC;Ljava/lang/Long;)Lio/reactivex/Observable;

    move-result-object p1

    goto :goto_0

    .line 99
    :cond_0
    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "Observable.just(result)"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p1
.end method

.method public synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 32
    check-cast p1, Lo/Zf$TaskDescription;

    invoke-virtual {p0, p1}, Lo/Zf$Application;->a(Lo/Zf$TaskDescription;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
