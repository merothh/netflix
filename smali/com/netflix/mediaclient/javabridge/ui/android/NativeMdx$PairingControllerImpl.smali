.class Lcom/netflix/mediaclient/javabridge/ui/android/NativeMdx$PairingControllerImpl;
.super Ljava/lang/Object;
.source "NativeMdx.java"

# interfaces
.implements Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/PairingController;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/javabridge/ui/android/NativeMdx;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/javabridge/ui/android/NativeMdx;)V
    .locals 0

    .prologue
    .line 285
    iput-object p1, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMdx$PairingControllerImpl;->this$0:Lcom/netflix/mediaclient/javabridge/ui/android/NativeMdx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deletePairing(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 287
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMdx$PairingControllerImpl;->this$0:Lcom/netflix/mediaclient/javabridge/ui/android/NativeMdx;

    new-instance v1, Lcom/netflix/mediaclient/javabridge/invoke/mdx/pair/DeletePairing;

    invoke-direct {v1, p1}, Lcom/netflix/mediaclient/javabridge/invoke/mdx/pair/DeletePairing;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMdx;->access$000(Lcom/netflix/mediaclient/javabridge/ui/android/NativeMdx;Lcom/netflix/mediaclient/javabridge/invoke/Invoke;)V

    .line 289
    return-void
.end method

.method public pairingRequest(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 292
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMdx$PairingControllerImpl;->this$0:Lcom/netflix/mediaclient/javabridge/ui/android/NativeMdx;

    new-instance v1, Lcom/netflix/mediaclient/javabridge/invoke/mdx/pair/PairingRequest;

    invoke-direct {v1, p1}, Lcom/netflix/mediaclient/javabridge/invoke/mdx/pair/PairingRequest;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMdx;->access$000(Lcom/netflix/mediaclient/javabridge/ui/android/NativeMdx;Lcom/netflix/mediaclient/javabridge/invoke/Invoke;)V

    .line 293
    return-void
.end method

.method public registrationPairingRequest(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 296
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMdx$PairingControllerImpl;->this$0:Lcom/netflix/mediaclient/javabridge/ui/android/NativeMdx;

    new-instance v1, Lcom/netflix/mediaclient/javabridge/invoke/mdx/pair/RegistrationPairingRequest;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/netflix/mediaclient/javabridge/invoke/mdx/pair/RegistrationPairingRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMdx;->access$000(Lcom/netflix/mediaclient/javabridge/ui/android/NativeMdx;Lcom/netflix/mediaclient/javabridge/invoke/Invoke;)V

    .line 297
    return-void
.end method

.method public registrationPairingRequest(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 300
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMdx$PairingControllerImpl;->this$0:Lcom/netflix/mediaclient/javabridge/ui/android/NativeMdx;

    new-instance v1, Lcom/netflix/mediaclient/javabridge/invoke/mdx/pair/RegistrationPairingRequest;

    invoke-direct {v1, p1, p2}, Lcom/netflix/mediaclient/javabridge/invoke/mdx/pair/RegistrationPairingRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMdx;->access$000(Lcom/netflix/mediaclient/javabridge/ui/android/NativeMdx;Lcom/netflix/mediaclient/javabridge/invoke/Invoke;)V

    .line 301
    return-void
.end method
