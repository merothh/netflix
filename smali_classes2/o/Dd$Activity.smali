.class public final Lo/Dd$Activity;
.super Landroid/widget/BaseAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Dd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Activity"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Dd$Activity$ActionBar;
    }
.end annotation


# instance fields
.field private final a:Landroid/app/Activity;

.field final synthetic b:Lo/Dd;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/netflix/mediaclient/servicemgr/IPlayer$LoaderManager;

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/Dd;Landroid/app/Activity;Lcom/netflix/mediaclient/servicemgr/IPlayer$LoaderManager;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/netflix/mediaclient/servicemgr/IPlayer$LoaderManager;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    const-string v0, "activity"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "netflixVideoView"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "speedNameList"

    invoke-static {p4, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "speedValueList"

    invoke-static {p5, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    iput-object p1, p0, Lo/Dd$Activity;->b:Lo/Dd;

    .line 125
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p2, p0, Lo/Dd$Activity;->a:Landroid/app/Activity;

    iput-object p3, p0, Lo/Dd$Activity;->d:Lcom/netflix/mediaclient/servicemgr/IPlayer$LoaderManager;

    iput-object p4, p0, Lo/Dd$Activity;->e:Ljava/util/List;

    iput-object p5, p0, Lo/Dd$Activity;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(Lcom/netflix/mediaclient/servicemgr/IPlayer$LoaderManager;)V
    .locals 1

    const-string v0, "videoView"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    iput-object p1, p0, Lo/Dd$Activity;->d:Lcom/netflix/mediaclient/servicemgr/IPlayer$LoaderManager;

    return-void
.end method

.method public e(I)Ljava/lang/String;
    .locals 1

    .line 132
    iget-object v0, p0, Lo/Dd$Activity;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getCount()I
    .locals 1

    .line 128
    iget-object v0, p0, Lo/Dd$Activity;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 120
    invoke-virtual {p0, p1}, Lo/Dd$Activity;->e(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    const-string v0, "parent"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    .line 147
    sget p2, Lcom/netflix/mediaclient/ui/R$Dialog;->fH:I

    .line 148
    iget-object v0, p0, Lo/Dd$Activity;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 149
    new-instance p3, Lo/Dd$Activity$ActionBar;

    const-string v0, "convertView"

    invoke-static {p2, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p3, p0, p2}, Lo/Dd$Activity$ActionBar;-><init>(Lo/Dd$Activity;Landroid/view/View;)V

    .line 150
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 153
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_3

    check-cast p3, Lo/Dd$Activity$ActionBar;

    .line 154
    iget-object v0, p0, Lo/Dd$Activity;->d:Lcom/netflix/mediaclient/servicemgr/IPlayer$LoaderManager;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IPlayer$LoaderManager;->d()F

    move-result v0

    .line 155
    iget-object v1, p0, Lo/Dd$Activity;->c:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    check-cast v2, Ljava/lang/Comparable;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lo/akz;->e(Ljava/util/List;Ljava/lang/Comparable;IIILjava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 157
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    .line 158
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t find the speed with value "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " in list"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    return-object p2

    .line 161
    :cond_1
    iget-object v0, p0, Lo/Dd$Activity;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 163
    invoke-virtual {p0, p1}, Lo/Dd$Activity;->e(I)Ljava/lang/String;

    move-result-object p1

    .line 164
    invoke-static {p1, v0}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 166
    invoke-virtual {p3}, Lo/Dd$Activity$ActionBar;->e()Landroid/widget/TextView;

    move-result-object v1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    invoke-virtual {p3}, Lo/Dd$Activity$ActionBar;->b()Landroid/widget/RadioButton;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    if-eqz v0, :cond_2

    .line 169
    invoke-virtual {p3}, Lo/Dd$Activity$ActionBar;->e()Landroid/widget/TextView;

    move-result-object p1

    invoke-static {p1}, Lcom/netflix/mediaclient/util/ViewUtils;->b(Landroid/widget/TextView;)V

    goto :goto_0

    .line 171
    :cond_2
    invoke-virtual {p3}, Lo/Dd$Activity$ActionBar;->e()Landroid/widget/TextView;

    move-result-object p1

    invoke-static {p1}, Lcom/netflix/mediaclient/util/ViewUtils;->e(Landroid/widget/TextView;)V

    :goto_0
    return-object p2

    .line 153
    :cond_3
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type com.netflix.mediaclient.ui.common.SpeedSelector.SpeedAdapter.RowHolder"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
