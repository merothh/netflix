.class Lo/Nm;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final a:Lo/BC;

.field private final b:Lo/Np;

.field private final c:Lcom/netflix/mediaclient/android/activity/NetflixActivity;


# direct methods
.method public constructor <init>(Lo/Np;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/BC;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/Nm;->b:Lo/Np;

    iput-object p2, p0, Lo/Nm;->c:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iput-object p3, p0, Lo/Nm;->a:Lo/BC;

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lo/Nm;->b:Lo/Np;

    iget-object v1, p0, Lo/Nm;->c:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iget-object v2, p0, Lo/Nm;->a:Lo/BC;

    check-cast p1, Lo/Zf$TaskDescription;

    invoke-static {v0, v1, v2, p1}, Lo/Np;->a(Lo/Np;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/BC;Lo/Zf$TaskDescription;)V

    return-void
.end method
