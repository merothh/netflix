.class public final Lo/VoiceInteractionManagerInternal;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:Lo/InputBinding;

.field private final b:Lo/GateKeeperResponse;

.field private final e:Lo/TextClassificationManager;


# direct methods
.method public constructor <init>(Lo/TextClassificationManager;Lo/InputBinding;Lo/GateKeeperResponse;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "signupLogger"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stringProvider"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "keyboardController"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/VoiceInteractionManagerInternal;->e:Lo/TextClassificationManager;

    iput-object p2, p0, Lo/VoiceInteractionManagerInternal;->a:Lo/InputBinding;

    iput-object p3, p0, Lo/VoiceInteractionManagerInternal;->b:Lo/GateKeeperResponse;

    return-void
.end method


# virtual methods
.method public final a(Lcom/netflix/mediaclient/acquisition/adapters/PaymentPickerAdapter$OnPaymentOptionSelectedListener;Ljava/util/List;)Lcom/netflix/mediaclient/acquisition/adapters/PaymentPickerAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/acquisition/adapters/PaymentPickerAdapter$OnPaymentOptionSelectedListener;",
            "Ljava/util/List<",
            "Lo/TransformationMethod2;",
            ">;)",
            "Lcom/netflix/mediaclient/acquisition/adapters/PaymentPickerAdapter;"
        }
    .end annotation

    const-string v0, "onPaymentOptionSelectedListener"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paymentOptionViewModels"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    new-instance v0, Lcom/netflix/mediaclient/acquisition/adapters/PaymentPickerAdapter;

    invoke-direct {v0, p1, p2}, Lcom/netflix/mediaclient/acquisition/adapters/PaymentPickerAdapter;-><init>(Lcom/netflix/mediaclient/acquisition/adapters/PaymentPickerAdapter$OnPaymentOptionSelectedListener;Ljava/util/List;)V

    return-object v0
.end method

.method public final a(Ljava/util/List;Lo/RecognizerIntent;Lo/UnicodeScript;ZLjava/util/Map;)Lo/VrListenerService;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lo/SynthesisPlaybackQueueItem;",
            ">;",
            "Lo/RecognizerIntent;",
            "Lo/UnicodeScript;",
            "Z",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "+",
            "Lo/VrListenerService$Activity;",
            ">;)",
            "Lo/VrListenerService;"
        }
    .end annotation

    const-string v0, "fields"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "formSubmissionListener"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lifecycleOwner"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    new-instance v0, Lo/VrListenerService;

    iget-object v2, p0, Lo/VoiceInteractionManagerInternal;->e:Lo/TextClassificationManager;

    iget-object v3, p0, Lo/VoiceInteractionManagerInternal;->a:Lo/InputBinding;

    iget-object v4, p0, Lo/VoiceInteractionManagerInternal;->b:Lo/GateKeeperResponse;

    move-object v1, v0

    move-object v5, p1

    move-object v6, p3

    move-object v7, p2

    move v8, p4

    move-object v9, p5

    invoke-direct/range {v1 .. v9}, Lo/VrListenerService;-><init>(Lo/TextClassificationManager;Lo/InputBinding;Lo/GateKeeperResponse;Ljava/util/List;Lo/UnicodeScript;Lo/RecognizerIntent;ZLjava/util/Map;)V

    return-object v0
.end method

.method public final c(Ljava/util/List;Lo/RecognizerIntent;Lo/UnicodeScript;Z)Lo/VrListenerService;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lo/SynthesisPlaybackQueueItem;",
            ">;",
            "Lo/RecognizerIntent;",
            "Lo/UnicodeScript;",
            "Z)",
            "Lo/VrListenerService;"
        }
    .end annotation

    move-object v0, p0

    const-string v1, "fields"

    move-object v6, p1

    invoke-static {p1, v1}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "formSubmissionListener"

    move-object v8, p2

    invoke-static {p2, v1}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "lifecycleOwner"

    move-object/from16 v7, p3

    invoke-static {v7, v1}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    new-instance v1, Lo/VrListenerService;

    iget-object v3, v0, Lo/VoiceInteractionManagerInternal;->e:Lo/TextClassificationManager;

    iget-object v4, v0, Lo/VoiceInteractionManagerInternal;->a:Lo/InputBinding;

    iget-object v5, v0, Lo/VoiceInteractionManagerInternal;->b:Lo/GateKeeperResponse;

    const/4 v10, 0x0

    const/16 v11, 0x80

    const/4 v12, 0x0

    move-object v2, v1

    move/from16 v9, p4

    invoke-direct/range {v2 .. v12}, Lo/VrListenerService;-><init>(Lo/TextClassificationManager;Lo/InputBinding;Lo/GateKeeperResponse;Ljava/util/List;Lo/UnicodeScript;Lo/RecognizerIntent;ZLjava/util/Map;ILo/amc;)V

    return-object v1
.end method
