.class Lo/ClipData$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ClipData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/ClipData;


# direct methods
.method constructor <init>(Lo/ClipData;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lo/ClipData$4;->a:Lo/ClipData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 56
    iget-object v0, p0, Lo/ClipData$4;->a:Lo/ClipData;

    invoke-virtual {v0}, Lo/ClipData;->o()V

    return-void
.end method
