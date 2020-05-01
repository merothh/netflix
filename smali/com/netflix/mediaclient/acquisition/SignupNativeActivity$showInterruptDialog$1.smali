.class final Lcom/netflix/mediaclient/acquisition/SignupNativeActivity$showInterruptDialog$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->showInterruptDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity$showInterruptDialog$1;->this$0:Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 416
    iget-object p1, p0, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity$showInterruptDialog$1;->this$0:Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;

    const-string p2, "welcome"

    invoke-virtual {p1, p2}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->fetchMode(Ljava/lang/String;)V

    return-void
.end method
