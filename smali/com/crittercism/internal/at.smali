.class public final Lcom/crittercism/internal/at;
.super Landroid/content/ContextWrapper;


# instance fields
.field a:Landroid/app/Application;

.field private b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/crittercism/internal/at;->a:Landroid/app/Application;

    const/4 v1, 0x0

    iput v1, p0, Lcom/crittercism/internal/at;->b:I

    invoke-static {p1}, Lcom/crittercism/internal/at$a;->a(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/crittercism/internal/at;->b:I

    iget v1, p0, Lcom/crittercism/internal/at;->b:I

    sget v2, Lcom/crittercism/internal/at$a;->a:I

    if-ne v1, v2, :cond_0

    check-cast p1, Landroid/app/Application;

    :goto_0
    iput-object p1, p0, Lcom/crittercism/internal/at;->a:Landroid/app/Application;

    return-void

    :cond_0
    sget v2, Lcom/crittercism/internal/at$a;->b:I

    if-ne v1, v2, :cond_1

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    goto :goto_0

    :cond_1
    sget v2, Lcom/crittercism/internal/at$a;->c:I

    if-ne v1, v2, :cond_2

    check-cast p1, Landroid/app/Service;

    invoke-virtual {p1}, Landroid/app/Service;->getApplication()Landroid/app/Application;

    move-result-object p1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    instance-of v1, p1, Landroid/app/Application;

    if-eqz v1, :cond_3

    check-cast p1, Landroid/app/Application;

    goto :goto_0

    :cond_3
    move-object p1, v0

    goto :goto_0
.end method
