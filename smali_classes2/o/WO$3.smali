.class final Lo/WO$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/WO;-><init>(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic d:Lo/WO;


# direct methods
.method constructor <init>(Lo/WO;)V
    .locals 0

    iput-object p1, p0, Lo/WO$3;->d:Lo/WO;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 17
    iget-object p1, p0, Lo/WO$3;->d:Lo/WO;

    sget-object v0, Lo/UU$SharedPreferences;->e:Lo/UU$SharedPreferences;

    invoke-virtual {p1, v0}, Lo/WO;->e(Ljava/lang/Object;)V

    return-void
.end method