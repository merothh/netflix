.class public final Lo/HK$TaskDescription;
.super Lo/TimeUnit;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/HK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TaskDescription"
.end annotation


# instance fields
.field public d:Lo/GridView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Lo/TimeUnit;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lo/GridView;
    .locals 2

    .line 46
    iget-object v0, p0, Lo/HK$TaskDescription;->d:Lo/GridView;

    if-nez v0, :cond_0

    const-string v1, "image"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method protected d(Landroid/view/View;)V
    .locals 1

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    sget v0, Lo/GS$Dialog;->m:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "itemView.findViewById(R.id.image)"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lo/GridView;

    iput-object p1, p0, Lo/HK$TaskDescription;->d:Lo/GridView;

    return-void
.end method
