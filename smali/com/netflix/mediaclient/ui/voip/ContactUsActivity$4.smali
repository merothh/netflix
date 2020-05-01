.class Lcom/netflix/mediaclient/ui/voip/ContactUsActivity$4;
.super Ljava/lang/Object;
.source "ContactUsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;)V
    .locals 0

    .prologue
    .line 696
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity$4;->this$0:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 699
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity$4;->this$0:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    invoke-static {}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->access$300()[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 700
    return-void
.end method
