.class Landroidx/appcompat/app/AppCompatViewInflater$Activity;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/AppCompatViewInflater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Activity"
.end annotation


# instance fields
.field private final a:Landroid/view/View;

.field private final b:Ljava/lang/String;

.field private c:Ljava/lang/reflect/Method;

.field private d:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/view/View;Ljava/lang/String;)V
    .locals 0

    .line 373
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 374
    iput-object p1, p0, Landroidx/appcompat/app/AppCompatViewInflater$Activity;->a:Landroid/view/View;

    .line 375
    iput-object p2, p0, Landroidx/appcompat/app/AppCompatViewInflater$Activity;->b:Ljava/lang/String;

    return-void
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    :goto_0
    if-eqz p1, :cond_2

    .line 399
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->isRestricted()Z

    move-result p2

    if-nez p2, :cond_0

    .line 400
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    iget-object v0, p0, Landroidx/appcompat/app/AppCompatViewInflater$Activity;->b:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Landroid/view/View;

    aput-object v3, v1, v2

    invoke-virtual {p2, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 402
    iput-object p2, p0, Landroidx/appcompat/app/AppCompatViewInflater$Activity;->c:Ljava/lang/reflect/Method;

    .line 403
    iput-object p1, p0, Landroidx/appcompat/app/AppCompatViewInflater$Activity;->d:Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    nop

    .line 411
    :cond_0
    instance-of p2, p1, Landroid/content/ContextWrapper;

    if-eqz p2, :cond_1

    .line 412
    check-cast p1, Landroid/content/ContextWrapper;

    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_0

    .line 419
    :cond_2
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatViewInflater$Activity;->a:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_3

    const-string p1, ""

    goto :goto_1

    .line 420
    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " with id \'"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroidx/appcompat/app/AppCompatViewInflater$Activity;->a:Landroid/view/View;

    .line 421
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 422
    :goto_1
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not find method "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/appcompat/app/AppCompatViewInflater$Activity;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(View) in a parent or ancestor Context for android:onClick "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "attribute defined on view "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/appcompat/app/AppCompatViewInflater$Activity;->a:Landroid/view/View;

    .line 424
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 380
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatViewInflater$Activity;->c:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 381
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatViewInflater$Activity;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/app/AppCompatViewInflater$Activity;->b:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Landroidx/appcompat/app/AppCompatViewInflater$Activity;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 385
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatViewInflater$Activity;->c:Ljava/lang/reflect/Method;

    iget-object v1, p0, Landroidx/appcompat/app/AppCompatViewInflater$Activity;->d:Landroid/content/Context;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 390
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Could not execute method for android:onClick"

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    .line 387
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Could not execute non-public method for android:onClick"

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
