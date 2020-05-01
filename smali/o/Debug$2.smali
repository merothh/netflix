.class final Lo/Debug$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Debug;-><init>(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic d:Lo/Debug;


# direct methods
.method constructor <init>(Lo/Debug;)V
    .locals 0

    iput-object p1, p0, Lo/Debug$2;->d:Lo/Debug;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 61
    iget-object p1, p0, Lo/Debug$2;->d:Lo/Debug;

    sget-object v0, Lo/CommonClock$TaskDescription;->e:Lo/CommonClock$TaskDescription;

    invoke-virtual {p1, v0}, Lo/Debug;->e(Ljava/lang/Object;)V

    return-void
.end method
