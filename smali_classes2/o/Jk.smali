.class public Lo/Jk;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final d:Lcom/netflix/mediaclient/ui/launch/LaunchActivity;

.field private final e:Lo/Am;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/launch/LaunchActivity;Lo/Am;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/Jk;->d:Lcom/netflix/mediaclient/ui/launch/LaunchActivity;

    iput-object p2, p0, Lo/Jk;->e:Lo/Am;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lo/Jk;->d:Lcom/netflix/mediaclient/ui/launch/LaunchActivity;

    iget-object v1, p0, Lo/Jk;->e:Lo/Am;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->c(Lcom/netflix/mediaclient/ui/launch/LaunchActivity;Lo/Am;)V

    return-void
.end method
