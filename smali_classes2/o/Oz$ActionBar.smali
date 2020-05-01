.class public final Lo/Oz$ActionBar;
.super Landroidx/recyclerview/widget/RecyclerView$Intent;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Oz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ActionBar"
.end annotation


# static fields
.field static final synthetic c:[Lo/amT;


# instance fields
.field private final a:Lo/ams;

.field private d:Lcom/netflix/cl/model/TrackingInfo;

.field private e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lo/amT;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lo/Oz$ActionBar;

    invoke-static {v2}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v2

    const-string v3, "callToActionButton"

    const-string v4, "getCallToActionButton()Lcom/netflix/mediaclient/android/widget/NetflixTextButton;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v1

    check-cast v1, Lo/amT;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lo/Oz$ActionBar;->c:[Lo/amT;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Intent;-><init>(Landroid/view/View;)V

    .line 26
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->bj:I

    invoke-static {p0, v0}, Lo/NfcV;->d(Landroidx/recyclerview/widget/RecyclerView$Intent;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lo/Oz$ActionBar;->a:Lo/ams;

    .line 32
    invoke-direct {p0}, Lo/Oz$ActionBar;->a()Lo/HorizontalScrollView;

    move-result-object v0

    new-instance v1, Lo/Oz$ActionBar$3;

    invoke-direct {v1, p0, p1}, Lo/Oz$ActionBar$3;-><init>(Lo/Oz$ActionBar;Landroid/view/View;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lo/HorizontalScrollView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static final synthetic a(Lo/Oz$ActionBar;)Lcom/netflix/cl/model/TrackingInfo;
    .locals 0

    .line 25
    iget-object p0, p0, Lo/Oz$ActionBar;->d:Lcom/netflix/cl/model/TrackingInfo;

    return-object p0
.end method

.method private final a()Lo/HorizontalScrollView;
    .locals 3

    iget-object v0, p0, Lo/Oz$ActionBar;->a:Lo/ams;

    sget-object v1, Lo/Oz$ActionBar;->c:[Lo/amT;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/HorizontalScrollView;

    return-object v0
.end method

.method private final a(Lcom/netflix/cl/model/TrackingInfo;)V
    .locals 3

    .line 41
    sget-object v0, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->b:Lcom/netflix/mediaclient/ui/util/CLv2Utils;

    new-instance v1, Lcom/netflix/cl/model/event/session/Focus;

    sget-object v2, Lcom/netflix/cl/model/AppView;->notificationLandingItem:Lcom/netflix/cl/model/AppView;

    invoke-direct {v1, v2, p1}, Lcom/netflix/cl/model/event/session/Focus;-><init>(Lcom/netflix/cl/model/AppView;Lcom/netflix/cl/model/TrackingInfo;)V

    new-instance p1, Lcom/netflix/cl/model/event/session/command/ViewDetailsCommand;

    invoke-direct {p1}, Lcom/netflix/cl/model/event/session/command/ViewDetailsCommand;-><init>()V

    check-cast p1, Lcom/netflix/cl/model/event/session/command/Command;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->d(Lcom/netflix/cl/model/event/session/Focus;Lcom/netflix/cl/model/event/session/command/Command;Z)V

    return-void
.end method

.method public static final synthetic c(Lo/Oz$ActionBar;Lcom/netflix/cl/model/TrackingInfo;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lo/Oz$ActionBar;->a(Lcom/netflix/cl/model/TrackingInfo;)V

    return-void
.end method

.method public static final synthetic d(Lo/Oz$ActionBar;)Ljava/lang/String;
    .locals 0

    .line 25
    iget-object p0, p0, Lo/Oz$ActionBar;->e:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public final c(Lo/Oz;)V
    .locals 2

    const-string v0, "row"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    invoke-direct {p0}, Lo/Oz$ActionBar;->a()Lo/HorizontalScrollView;

    move-result-object v0

    invoke-virtual {p1}, Lo/Oz;->b()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/HorizontalScrollView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    invoke-virtual {p1}, Lo/Oz;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/Oz$ActionBar;->e:Ljava/lang/String;

    .line 48
    invoke-virtual {p1}, Lo/Oz;->e()Lcom/netflix/cl/model/TrackingInfo;

    move-result-object p1

    iput-object p1, p0, Lo/Oz$ActionBar;->d:Lcom/netflix/cl/model/TrackingInfo;

    return-void
.end method
