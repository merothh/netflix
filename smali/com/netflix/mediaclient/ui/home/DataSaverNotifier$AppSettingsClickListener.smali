.class Lcom/netflix/mediaclient/ui/home/DataSaverNotifier$AppSettingsClickListener;
.super Ljava/lang/Object;
.source "DataSaverNotifier.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final activity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/home/DataSaverNotifier$AppSettingsClickListener;->activity:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/DataSaverNotifier$AppSettingsClickListener;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/home/DataSaverNotifier$AppSettingsClickListener;->activity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/settings/SettingsActivity;->createStartIntent(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
