.class final Lo/DexFile$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/DexFile;->b(Landroid/content/Context;Lo/Toast;Lo/ViewTreeObserver$StateListAnimator;Landroid/os/Handler;ZII)Landroid/graphics/Typeface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lo/DexFile$StateListAnimator;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:I

.field final synthetic e:Lo/Toast;


# direct methods
.method constructor <init>(Landroid/content/Context;Lo/Toast;ILjava/lang/String;)V
    .locals 0

    .line 254
    iput-object p1, p0, Lo/DexFile$4;->a:Landroid/content/Context;

    iput-object p2, p0, Lo/DexFile$4;->e:Lo/Toast;

    iput p3, p0, Lo/DexFile$4;->c:I

    iput-object p4, p0, Lo/DexFile$4;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lo/DexFile$StateListAnimator;
    .locals 4

    .line 257
    iget-object v0, p0, Lo/DexFile$4;->a:Landroid/content/Context;

    iget-object v1, p0, Lo/DexFile$4;->e:Lo/Toast;

    iget v2, p0, Lo/DexFile$4;->c:I

    invoke-static {v0, v1, v2}, Lo/DexFile;->d(Landroid/content/Context;Lo/Toast;I)Lo/DexFile$StateListAnimator;

    move-result-object v0

    .line 258
    iget-object v1, v0, Lo/DexFile$StateListAnimator;->a:Landroid/graphics/Typeface;

    if-eqz v1, :cond_0

    .line 259
    sget-object v1, Lo/DexFile;->c:Lo/CharacterStyle;

    iget-object v2, p0, Lo/DexFile$4;->b:Ljava/lang/String;

    iget-object v3, v0, Lo/DexFile$StateListAnimator;->a:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2, v3}, Lo/CharacterStyle;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1

    .line 254
    invoke-virtual {p0}, Lo/DexFile$4;->a()Lo/DexFile$StateListAnimator;

    move-result-object v0

    return-object v0
.end method
