.class Lo/kA$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/kA;->c(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/kA;


# direct methods
.method constructor <init>(Lo/kA;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lo/kA$4;->b:Lo/kA;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 170
    iget-object v0, p0, Lo/kA$4;->b:Lo/kA;

    invoke-static {v0}, Lo/kA;->c(Lo/kA;)I

    move-result v1

    invoke-static {v0, v1}, Lo/kA;->a(Lo/kA;I)V

    return-void
.end method
