.class Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$DataSelectorViewListener;
.super Ljava/lang/Object;
.source "BandwidthPreferenceDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$DataSelectorViewListener;->this$0:Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$DataSelectorViewListener;->this$0:Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;->access$300(Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "nf_bw"

    const-string/jumbo v1, "ignore manual selection - in auto mode"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$ManualBwChoice;->UNDEFINED:Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$ManualBwChoice;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    const-string/jumbo v1, "nf_bw"

    const-string/jumbo v2, "Ignoring click on unknown view"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    sget-object v1, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$ManualBwChoice;->UNDEFINED:Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$ManualBwChoice;

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$DataSelectorViewListener;->this$0:Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;->access$000(Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;)V

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$DataSelectorViewListener;->this$0:Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;->access$200(Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$ManualBwChoice;)V

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$ManualBwChoice;->OFF:Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$ManualBwChoice;

    goto :goto_1

    :pswitch_2
    sget-object v0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$ManualBwChoice;->LOW:Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$ManualBwChoice;

    goto :goto_1

    :pswitch_3
    sget-object v0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$ManualBwChoice;->MEDIUM:Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$ManualBwChoice;

    goto :goto_1

    :pswitch_4
    sget-object v0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$ManualBwChoice;->HIGH:Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$ManualBwChoice;

    goto :goto_1

    :pswitch_5
    sget-object v0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$ManualBwChoice;->UNLIMITED:Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$ManualBwChoice;

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x7f0f02f5
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method
