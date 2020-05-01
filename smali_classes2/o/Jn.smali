.class public Lo/Jn;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final c:Lcom/netflix/mediaclient/ui/launch/LaunchActivity;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/launch/LaunchActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/Jn;->c:Lcom/netflix/mediaclient/ui/launch/LaunchActivity;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lo/Jn;->c:Lcom/netflix/mediaclient/ui/launch/LaunchActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->d(Lcom/netflix/mediaclient/ui/launch/LaunchActivity;)V

    return-void
.end method
