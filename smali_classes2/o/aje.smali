.class public Lo/aje;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/uber/autodispose/android/internal/MainThreadDisposable;


# direct methods
.method public constructor <init>(Lcom/uber/autodispose/android/internal/MainThreadDisposable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/aje;->a:Lcom/uber/autodispose/android/internal/MainThreadDisposable;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lo/aje;->a:Lcom/uber/autodispose/android/internal/MainThreadDisposable;

    invoke-virtual {v0}, Lcom/uber/autodispose/android/internal/MainThreadDisposable;->b()V

    return-void
.end method
