.class Lo/Gc$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Gc;->c(Landroid/content/Context;)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic e:Lo/Gc;


# direct methods
.method constructor <init>(Lo/Gc;Landroid/content/Context;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lo/Gc$1;->e:Lo/Gc;

    iput-object p2, p0, Lo/Gc$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 53
    iget-object v0, p0, Lo/Gc$1;->a:Landroid/content/Context;

    invoke-static {v0}, Lo/adk;->h(Landroid/content/Context;)V

    return-void
.end method
