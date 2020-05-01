.class public Lo/aqB;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final b:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/aqB;->b:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lo/aqB;->b:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/chromium/base/task/ChromeThreadPoolExecutor$1;->d(Ljava/lang/Runnable;)V

    return-void
.end method
