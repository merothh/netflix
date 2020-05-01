.class public Lo/YZ;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final c:Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;

.field private final d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

.field private final e:Lo/BC;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/BC;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/YZ;->c:Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;

    iput-object p2, p0, Lo/YZ;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iput-object p3, p0, Lo/YZ;->e:Lo/BC;

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lo/YZ;->c:Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;

    iget-object v1, p0, Lo/YZ;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iget-object v2, p0, Lo/YZ;->e:Lo/BC;

    check-cast p1, Lo/Zf$TaskDescription;

    invoke-static {v0, v1, v2, p1}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->b(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/BC;Lo/Zf$TaskDescription;)V

    return-void
.end method
