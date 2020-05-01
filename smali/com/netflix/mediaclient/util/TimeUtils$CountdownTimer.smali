.class public Lcom/netflix/mediaclient/util/TimeUtils$CountdownTimer;
.super Ljava/lang/Object;
.source "TimeUtils.java"


# instance fields
.field private mTimer:I

.field private final netflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

.field private final onEverySecond:Ljava/lang/Runnable;

.field private onFinish:Ljava/lang/Runnable;

.field private onTick:Ljava/lang/Runnable;

.field private running:Z


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 1

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    new-instance v0, Lcom/netflix/mediaclient/util/TimeUtils$CountdownTimer$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/util/TimeUtils$CountdownTimer$1;-><init>(Lcom/netflix/mediaclient/util/TimeUtils$CountdownTimer;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/util/TimeUtils$CountdownTimer;->onEverySecond:Ljava/lang/Runnable;

    .line 92
    iput-object p1, p0, Lcom/netflix/mediaclient/util/TimeUtils$CountdownTimer;->netflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 93
    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/util/TimeUtils$CountdownTimer;)Z
    .locals 1

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/netflix/mediaclient/util/TimeUtils$CountdownTimer;->running:Z

    return v0
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/util/TimeUtils$CountdownTimer;)I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/netflix/mediaclient/util/TimeUtils$CountdownTimer;->mTimer:I

    return v0
.end method

.method static synthetic access$110(Lcom/netflix/mediaclient/util/TimeUtils$CountdownTimer;)I
    .locals 2

    .prologue
    .line 82
    iget v0, p0, Lcom/netflix/mediaclient/util/TimeUtils$CountdownTimer;->mTimer:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/netflix/mediaclient/util/TimeUtils$CountdownTimer;->mTimer:I

    return v0
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/util/TimeUtils$CountdownTimer;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/netflix/mediaclient/util/TimeUtils$CountdownTimer;->onTick:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/util/TimeUtils$CountdownTimer;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/netflix/mediaclient/util/TimeUtils$CountdownTimer;->netflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    return-object v0
.end method

.method static synthetic access$400(Lcom/netflix/mediaclient/util/TimeUtils$CountdownTimer;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/netflix/mediaclient/util/TimeUtils$CountdownTimer;->onFinish:Ljava/lang/Runnable;

    return-object v0
.end method


# virtual methods
.method public getTime()I
    .locals 1

    .prologue
    .line 138
    iget v0, p0, Lcom/netflix/mediaclient/util/TimeUtils$CountdownTimer;->mTimer:I

    return v0
.end method

.method public setOnFinish(Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcom/netflix/mediaclient/util/TimeUtils$CountdownTimer;->onFinish:Ljava/lang/Runnable;

    .line 135
    return-void
.end method

.method public setOnTick(Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lcom/netflix/mediaclient/util/TimeUtils$CountdownTimer;->onTick:Ljava/lang/Runnable;

    .line 131
    return-void
.end method

.method public setTime(I)V
    .locals 0

    .prologue
    .line 142
    iput p1, p0, Lcom/netflix/mediaclient/util/TimeUtils$CountdownTimer;->mTimer:I

    .line 143
    return-void
.end method

.method public startTimer()V
    .locals 4

    .prologue
    .line 119
    iget-boolean v0, p0, Lcom/netflix/mediaclient/util/TimeUtils$CountdownTimer;->running:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/netflix/mediaclient/util/TimeUtils$CountdownTimer;->mTimer:I

    if-lez v0, :cond_0

    .line 120
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/util/TimeUtils$CountdownTimer;->running:Z

    .line 121
    iget-object v0, p0, Lcom/netflix/mediaclient/util/TimeUtils$CountdownTimer;->netflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/util/TimeUtils$CountdownTimer;->onEverySecond:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 123
    :cond_0
    return-void
.end method

.method public stopTimer()V
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/util/TimeUtils$CountdownTimer;->running:Z

    .line 127
    return-void
.end method
