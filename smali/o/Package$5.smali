.class Lo/Package$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Package;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Lo/Package;


# direct methods
.method constructor <init>(Lo/Package;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lo/Package$5;->e:Lo/Package;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 149
    iget-object v0, p0, Lo/Package$5;->e:Lo/Package;

    invoke-virtual {v0}, Lo/Package;->e()V

    return-void
.end method
