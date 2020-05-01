.class public Lcom/netflix/mediaclient/ui/kids/KidsUtils$OnSwitchToKidsClickListener;
.super Ljava/lang/Object;
.source "KidsUtils.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final activity:Landroid/app/Activity;

.field private final entryName:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/kids/KidsUtils$OnSwitchToKidsClickListener;->activity:Landroid/app/Activity;

    .line 43
    iput-object p2, p0, Lcom/netflix/mediaclient/ui/kids/KidsUtils$OnSwitchToKidsClickListener;->entryName:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    .line 44
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 48
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kids/KidsUtils$OnSwitchToKidsClickListener;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/kids/KidsUtils$OnSwitchToKidsClickListener;->activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/kids/KidsUtils$OnSwitchToKidsClickListener;->entryName:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/ui/kids/KidsUtils;->access$000(Landroid/app/Activity;Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 49
    return-void
.end method
