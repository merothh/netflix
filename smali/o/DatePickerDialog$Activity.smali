.class Lo/DatePickerDialog$Activity;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/DatePickerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Activity"
.end annotation


# instance fields
.field private final a:Ljava/lang/Runnable;

.field final synthetic b:Lo/DatePickerDialog;

.field private final d:Lcom/android/volley/Request;

.field private final e:Lo/FragmentManagerNonConfig;


# direct methods
.method public constructor <init>(Lo/DatePickerDialog;Lcom/android/volley/Request;Lo/FragmentManagerNonConfig;Ljava/lang/Runnable;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lo/DatePickerDialog$Activity;->b:Lo/DatePickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p2, p0, Lo/DatePickerDialog$Activity;->d:Lcom/android/volley/Request;

    .line 84
    iput-object p3, p0, Lo/DatePickerDialog$Activity;->e:Lo/FragmentManagerNonConfig;

    .line 85
    iput-object p4, p0, Lo/DatePickerDialog$Activity;->a:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 92
    iget-object v0, p0, Lo/DatePickerDialog$Activity;->d:Lcom/android/volley/Request;

    invoke-virtual {v0}, Lcom/android/volley/Request;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lo/DatePickerDialog$Activity;->d:Lcom/android/volley/Request;

    const-string v1, "canceled-at-delivery"

    invoke-virtual {v0, v1}, Lcom/android/volley/Request;->a(Ljava/lang/String;)V

    return-void

    .line 98
    :cond_0
    iget-object v0, p0, Lo/DatePickerDialog$Activity;->e:Lo/FragmentManagerNonConfig;

    invoke-virtual {v0}, Lo/FragmentManagerNonConfig;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 99
    iget-object v0, p0, Lo/DatePickerDialog$Activity;->d:Lcom/android/volley/Request;

    iget-object v1, p0, Lo/DatePickerDialog$Activity;->e:Lo/FragmentManagerNonConfig;

    iget-object v1, v1, Lo/FragmentManagerNonConfig;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/android/volley/Request;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 101
    :cond_1
    iget-object v0, p0, Lo/DatePickerDialog$Activity;->d:Lcom/android/volley/Request;

    iget-object v1, p0, Lo/DatePickerDialog$Activity;->e:Lo/FragmentManagerNonConfig;

    iget-object v1, v1, Lo/FragmentManagerNonConfig;->a:Lcom/android/volley/VolleyError;

    invoke-virtual {v0, v1}, Lcom/android/volley/Request;->d(Lcom/android/volley/VolleyError;)V

    .line 106
    :goto_0
    iget-object v0, p0, Lo/DatePickerDialog$Activity;->e:Lo/FragmentManagerNonConfig;

    iget-boolean v0, v0, Lo/FragmentManagerNonConfig;->c:Z

    if-eqz v0, :cond_2

    .line 107
    iget-object v0, p0, Lo/DatePickerDialog$Activity;->d:Lcom/android/volley/Request;

    const-string v1, "intermediate-response"

    invoke-virtual {v0, v1}, Lcom/android/volley/Request;->e(Ljava/lang/String;)V

    goto :goto_1

    .line 109
    :cond_2
    iget-object v0, p0, Lo/DatePickerDialog$Activity;->d:Lcom/android/volley/Request;

    const-string v1, "done"

    invoke-virtual {v0, v1}, Lcom/android/volley/Request;->a(Ljava/lang/String;)V

    .line 113
    :goto_1
    iget-object v0, p0, Lo/DatePickerDialog$Activity;->a:Ljava/lang/Runnable;

    if-eqz v0, :cond_3

    .line 114
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_3
    return-void
.end method
