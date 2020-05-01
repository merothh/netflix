.class Lo/LT$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/LT;->d(Landroid/graphics/drawable/AnimationDrawable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/LT;

.field final synthetic d:Landroid/graphics/drawable/AnimationDrawable;


# direct methods
.method constructor <init>(Lo/LT;Landroid/graphics/drawable/AnimationDrawable;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lo/LT$1;->a:Lo/LT;

    iput-object p2, p0, Lo/LT$1;->d:Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 149
    iget-object v0, p0, Lo/LT$1;->d:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    return-void
.end method
