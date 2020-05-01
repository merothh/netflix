.class public Lo/JP;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;


# instance fields
.field private final a:Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;

.field private final e:Lcom/netflix/mediaclient/android/activity/NetflixActivity;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/JP;->a:Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;

    iput-object p2, p0, Lo/JP;->e:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    return-void
.end method


# virtual methods
.method public run(Lo/Am;)V
    .locals 2

    iget-object v0, p0, Lo/JP;->a:Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;

    iget-object v1, p0, Lo/JP;->e:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0, v1, p1}, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->d(Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/Am;)V

    return-void
.end method
