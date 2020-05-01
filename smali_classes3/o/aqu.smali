.class public Lo/aqu;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final c:Ljava/lang/Object;

.field private final e:Lorg/chromium/base/task/AsyncTask;


# direct methods
.method public constructor <init>(Lorg/chromium/base/task/AsyncTask;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/aqu;->e:Lorg/chromium/base/task/AsyncTask;

    iput-object p2, p0, Lo/aqu;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lo/aqu;->e:Lorg/chromium/base/task/AsyncTask;

    iget-object v1, p0, Lo/aqu;->c:Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/chromium/base/task/AsyncTask;->a(Lorg/chromium/base/task/AsyncTask;Ljava/lang/Object;)V

    return-void
.end method
