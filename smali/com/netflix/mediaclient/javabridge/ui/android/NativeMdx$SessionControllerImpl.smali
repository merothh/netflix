.class Lcom/netflix/mediaclient/javabridge/ui/android/NativeMdx$SessionControllerImpl;
.super Ljava/lang/Object;
.source "NativeMdx.java"

# interfaces
.implements Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/SessionController;


# instance fields
.field private mMessageName:Ljava/lang/String;

.field private mSessionId:I

.field final synthetic this$0:Lcom/netflix/mediaclient/javabridge/ui/android/NativeMdx;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/javabridge/ui/android/NativeMdx;)V
    .locals 1

    .prologue
    .line 303
    iput-object p1, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMdx$SessionControllerImpl;->this$0:Lcom/netflix/mediaclient/javabridge/ui/android/NativeMdx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 305
    const/4 v0, -0x1

    iput v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMdx$SessionControllerImpl;->mSessionId:I

    return-void
.end method


# virtual methods
.method public endSession(I)V
    .locals 2

    .prologue
    .line 317
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMdx$SessionControllerImpl;->this$0:Lcom/netflix/mediaclient/javabridge/ui/android/NativeMdx;

    new-instance v1, Lcom/netflix/mediaclient/javabridge/invoke/mdx/session/EndSession;

    invoke-direct {v1, p1}, Lcom/netflix/mediaclient/javabridge/invoke/mdx/session/EndSession;-><init>(I)V

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMdx;->access$000(Lcom/netflix/mediaclient/javabridge/ui/android/NativeMdx;Lcom/netflix/mediaclient/javabridge/invoke/Invoke;)V

    .line 318
    const/4 v0, -0x1

    iput v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMdx$SessionControllerImpl;->mSessionId:I

    .line 319
    return-void
.end method

.method public getLastMessageName(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 322
    iget v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMdx$SessionControllerImpl;->mSessionId:I

    if-ne v0, p1, :cond_0

    .line 323
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMdx$SessionControllerImpl;->mMessageName:Ljava/lang/String;

    .line 325
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public sendMessage(ILjava/lang/String;Lorg/json/JSONObject;)J
    .locals 2

    .prologue
    .line 307
    iput-object p2, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMdx$SessionControllerImpl;->mMessageName:Ljava/lang/String;

    .line 308
    iput p1, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMdx$SessionControllerImpl;->mSessionId:I

    .line 309
    new-instance v0, Lcom/netflix/mediaclient/javabridge/invoke/mdx/session/SendMessage;

    invoke-direct {v0, p1, p2, p3}, Lcom/netflix/mediaclient/javabridge/invoke/mdx/session/SendMessage;-><init>(ILjava/lang/String;Lorg/json/JSONObject;)V

    .line 310
    iget-object v1, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMdx$SessionControllerImpl;->this$0:Lcom/netflix/mediaclient/javabridge/ui/android/NativeMdx;

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMdx;->access$000(Lcom/netflix/mediaclient/javabridge/ui/android/NativeMdx;Lcom/netflix/mediaclient/javabridge/invoke/Invoke;)V

    .line 311
    invoke-virtual {v0}, Lcom/netflix/mediaclient/javabridge/invoke/mdx/session/SendMessage;->getXid()J

    move-result-wide v0

    return-wide v0
.end method

.method public startSession(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 314
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMdx$SessionControllerImpl;->this$0:Lcom/netflix/mediaclient/javabridge/ui/android/NativeMdx;

    new-instance v1, Lcom/netflix/mediaclient/javabridge/invoke/mdx/session/StartSession;

    invoke-direct {v1, p1}, Lcom/netflix/mediaclient/javabridge/invoke/mdx/session/StartSession;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMdx;->access$000(Lcom/netflix/mediaclient/javabridge/ui/android/NativeMdx;Lcom/netflix/mediaclient/javabridge/invoke/Invoke;)V

    .line 315
    return-void
.end method
