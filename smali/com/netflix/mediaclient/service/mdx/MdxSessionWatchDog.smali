.class public Lcom/netflix/mediaclient/service/mdx/MdxSessionWatchDog;
.super Ljava/lang/Object;
.source "MdxSessionWatchDog.java"


# static fields
.field private static final SESSION_EXPIRE_TIME_MS:J = 0x493e0L

.field private static final TAG:Ljava/lang/String; = "nf_mdxSessionWatchDog"


# instance fields
.field private final mCallback:Lcom/netflix/mediaclient/service/mdx/MdxSessionWatchDog$SessionWatchDogInterface;

.field private final mHandler:Landroid/os/Handler;

.field private final mPeriodicRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/mdx/MdxSessionWatchDog$SessionWatchDogInterface;Landroid/os/Handler;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netflix/mediaclient/service/mdx/MdxSessionWatchDog;->mCallback:Lcom/netflix/mediaclient/service/mdx/MdxSessionWatchDog$SessionWatchDogInterface;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/mdx/MdxSessionWatchDog;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/netflix/mediaclient/service/mdx/MdxSessionWatchDog$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/mdx/MdxSessionWatchDog$1;-><init>(Lcom/netflix/mediaclient/service/mdx/MdxSessionWatchDog;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxSessionWatchDog;->mPeriodicRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/service/mdx/MdxSessionWatchDog;)Lcom/netflix/mediaclient/service/mdx/MdxSessionWatchDog$SessionWatchDogInterface;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxSessionWatchDog;->mCallback:Lcom/netflix/mediaclient/service/mdx/MdxSessionWatchDog$SessionWatchDogInterface;

    return-object v0
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/service/mdx/MdxSessionWatchDog;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxSessionWatchDog;->mPeriodicRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/service/mdx/MdxSessionWatchDog;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxSessionWatchDog;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method start()V
    .locals 4

    const-string/jumbo v0, "nf_mdxSessionWatchDog"

    const-string/jumbo v1, "MdxSessionWatchDog: start"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxSessionWatchDog;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxSessionWatchDog;->mPeriodicRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxSessionWatchDog;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxSessionWatchDog;->mPeriodicRunnable:Ljava/lang/Runnable;

    const-wide/32 v2, 0x493e0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method stop()V
    .locals 2

    const-string/jumbo v0, "nf_mdxSessionWatchDog"

    const-string/jumbo v1, "MdxSessionWatchDog: stop"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxSessionWatchDog;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxSessionWatchDog;->mPeriodicRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method
