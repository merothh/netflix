.class public Lo/DatePickerDialog;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/FragmentState;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/DatePickerDialog$Activity;
    }
.end annotation


# instance fields
.field private final b:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lo/DatePickerDialog$5;

    invoke-direct {v0, p0, p1}, Lo/DatePickerDialog$5;-><init>(Lo/DatePickerDialog;Landroid/os/Handler;)V

    iput-object v0, p0, Lo/DatePickerDialog;->b:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public b(Lcom/android/volley/Request;Lcom/android/volley/VolleyError;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request<",
            "*>;",
            "Lcom/android/volley/VolleyError;",
            ")V"
        }
    .end annotation

    const-string v0, "post-error"

    .line 67
    invoke-virtual {p1, v0}, Lcom/android/volley/Request;->e(Ljava/lang/String;)V

    .line 68
    invoke-static {p2}, Lo/FragmentManagerNonConfig;->a(Lcom/android/volley/VolleyError;)Lo/FragmentManagerNonConfig;

    move-result-object p2

    .line 69
    iget-object v0, p0, Lo/DatePickerDialog;->b:Ljava/util/concurrent/Executor;

    new-instance v1, Lo/DatePickerDialog$Activity;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lo/DatePickerDialog$Activity;-><init>(Lo/DatePickerDialog;Lcom/android/volley/Request;Lo/FragmentManagerNonConfig;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b(Lcom/android/volley/Request;Lo/FragmentManagerNonConfig;Ljava/lang/Runnable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request<",
            "*>;",
            "Lo/FragmentManagerNonConfig<",
            "*>;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .line 60
    invoke-virtual {p1}, Lcom/android/volley/Request;->z()V

    const-string v0, "post-response"

    .line 61
    invoke-virtual {p1, v0}, Lcom/android/volley/Request;->e(Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lo/DatePickerDialog;->b:Ljava/util/concurrent/Executor;

    new-instance v1, Lo/DatePickerDialog$Activity;

    invoke-direct {v1, p0, p1, p2, p3}, Lo/DatePickerDialog$Activity;-><init>(Lo/DatePickerDialog;Lcom/android/volley/Request;Lo/FragmentManagerNonConfig;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c(Lcom/android/volley/Request;Lo/FragmentManagerNonConfig;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request<",
            "*>;",
            "Lo/FragmentManagerNonConfig<",
            "*>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 55
    invoke-virtual {p0, p1, p2, v0}, Lo/DatePickerDialog;->b(Lcom/android/volley/Request;Lo/FragmentManagerNonConfig;Ljava/lang/Runnable;)V

    return-void
.end method
