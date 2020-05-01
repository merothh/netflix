.class final Lo/FO$Application;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/FO;->a(Landroid/os/Parcelable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/FO;


# direct methods
.method constructor <init>(Lo/FO;)V
    .locals 0

    iput-object p1, p0, Lo/FO$Application;->b:Lo/FO;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 299
    iget-object v0, p0, Lo/FO$Application;->b:Lo/FO;

    invoke-static {v0}, Lo/FO;->d(Lo/FO;)Lo/DE;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/DE;->m()V

    :cond_0
    return-void
.end method
