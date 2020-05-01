.class public Lo/Kw;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;


# instance fields
.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/Kw;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run(Lo/Am;)V
    .locals 1

    iget-object v0, p0, Lo/Kw;->b:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->d(Ljava/lang/String;Lo/Am;)V

    return-void
.end method
