.class public final Lo/VrListenerService;
.super Landroidx/recyclerview/widget/RecyclerView$Activity;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/VrListenerService$Activity;,
        Lo/VrListenerService$StateListAnimator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Activity<",
        "Landroidx/recyclerview/widget/RecyclerView$Intent;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Lo/VrListenerService$StateListAnimator;


# instance fields
.field private a:Lcom/netflix/mediaclient/acquisition/view/TermsAndConsentsComponent;

.field private final c:Lo/InputBinding;

.field private final d:Lo/TextClassificationManager;

.field private final e:Lo/GateKeeperResponse;

.field private final f:Lo/UnicodeScript;

.field private final g:Z

.field private final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lo/VrListenerService$Activity;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Lo/RecognizerIntent;

.field private final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/SynthesisPlaybackQueueItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/VrListenerService$StateListAnimator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/VrListenerService$StateListAnimator;-><init>(Lo/amc;)V

    sput-object v0, Lo/VrListenerService;->b:Lo/VrListenerService$StateListAnimator;

    return-void
.end method

.method public constructor <init>(Lo/TextClassificationManager;Lo/InputBinding;Lo/GateKeeperResponse;Ljava/util/List;Lo/UnicodeScript;Lo/RecognizerIntent;ZLjava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/TextClassificationManager;",
            "Lo/InputBinding;",
            "Lo/GateKeeperResponse;",
            "Ljava/util/List<",
            "+",
            "Lo/SynthesisPlaybackQueueItem;",
            ">;",
            "Lo/UnicodeScript;",
            "Lo/RecognizerIntent;",
            "Z",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "+",
            "Lo/VrListenerService$Activity;",
            ">;)V"
        }
    .end annotation

    const-string v0, "signupLogger"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stringProvider"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "keyboardController"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fields"

    invoke-static {p4, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lifecycleOwner"

    invoke-static {p5, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "formSubmissionListener"

    invoke-static {p6, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Activity;-><init>()V

    iput-object p1, p0, Lo/VrListenerService;->d:Lo/TextClassificationManager;

    iput-object p2, p0, Lo/VrListenerService;->c:Lo/InputBinding;

    iput-object p3, p0, Lo/VrListenerService;->e:Lo/GateKeeperResponse;

    iput-object p4, p0, Lo/VrListenerService;->j:Ljava/util/List;

    iput-object p5, p0, Lo/VrListenerService;->f:Lo/UnicodeScript;

    iput-object p6, p0, Lo/VrListenerService;->i:Lo/RecognizerIntent;

    iput-boolean p7, p0, Lo/VrListenerService;->g:Z

    iput-object p8, p0, Lo/VrListenerService;->h:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>(Lo/TextClassificationManager;Lo/InputBinding;Lo/GateKeeperResponse;Ljava/util/List;Lo/UnicodeScript;Lo/RecognizerIntent;ZLjava/util/Map;ILo/amc;)V
    .locals 10

    move/from16 v0, p9

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 45
    check-cast v0, Ljava/util/Map;

    move-object v9, v0

    goto :goto_0

    :cond_0
    move-object/from16 v9, p8

    :goto_0
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    invoke-direct/range {v1 .. v9}, Lo/VrListenerService;-><init>(Lo/TextClassificationManager;Lo/InputBinding;Lo/GateKeeperResponse;Ljava/util/List;Lo/UnicodeScript;Lo/RecognizerIntent;ZLjava/util/Map;)V

    return-void
.end method

.method public static final synthetic a(Lo/VrListenerService;)Lo/GateKeeperResponse;
    .locals 0

    .line 37
    iget-object p0, p0, Lo/VrListenerService;->e:Lo/GateKeeperResponse;

    return-object p0
.end method

.method public static final synthetic c(Lo/VrListenerService;)Lo/RecognizerIntent;
    .locals 0

    .line 37
    iget-object p0, p0, Lo/VrListenerService;->i:Lo/RecognizerIntent;

    return-object p0
.end method

.method private final e(Landroid/widget/EditText;I)V
    .locals 1

    .line 242
    iget-object v0, p0, Lo/VrListenerService;->j:Ljava/util/List;

    invoke-static {v0}, Lo/akz;->b(Ljava/util/List;)I

    move-result v0

    if-ne p2, v0, :cond_0

    iget-boolean v0, p0, Lo/VrListenerService;->g:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_1

    :cond_1
    const/4 v0, 0x5

    .line 243
    :goto_1
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 245
    iget-object v0, p0, Lo/VrListenerService;->j:Ljava/util/List;

    invoke-static {v0}, Lo/akz;->b(Ljava/util/List;)I

    move-result v0

    if-eq p2, v0, :cond_2

    const/4 p2, 0x0

    .line 246
    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    goto :goto_2

    .line 248
    :cond_2
    new-instance p2, Lo/VrListenerService$ActionBar;

    invoke-direct {p2, p0}, Lo/VrListenerService$ActionBar;-><init>(Lo/VrListenerService;)V

    check-cast p2, Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    :goto_2
    return-void
.end method


# virtual methods
.method public final a(Lcom/netflix/mediaclient/acquisition/view/TermsAndConsentsComponent;)V
    .locals 1

    const-string v0, "termsAndConsentsComponent"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 270
    iput-object p1, p0, Lo/VrListenerService;->a:Lcom/netflix/mediaclient/acquisition/view/TermsAndConsentsComponent;

    return-void
.end method

.method public final c()V
    .locals 2

    .line 84
    iget-object v0, p0, Lo/VrListenerService;->j:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 279
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/SynthesisPlaybackQueueItem;

    .line 85
    invoke-virtual {v1}, Lo/SynthesisPlaybackQueueItem;->showValidationStateIfNotEmpty()V

    goto :goto_0

    .line 87
    :cond_0
    invoke-virtual {p0}, Lo/VrListenerService;->notifyDataSetChanged()V

    return-void
.end method

.method public final d()Z
    .locals 5

    .line 91
    iget-object v0, p0, Lo/VrListenerService;->j:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lo/akz;->n(Ljava/lang/Iterable;)Lo/anb;

    move-result-object v0

    .line 92
    sget-object v1, Lcom/netflix/mediaclient/acquisition2/components/form/FormAdapter$validateForm$areAllFieldsValid$1;->c:Lcom/netflix/mediaclient/acquisition2/components/form/FormAdapter$validateForm$areAllFieldsValid$1;

    check-cast v1, Lo/alA;

    invoke-static {v0, v1}, Lo/ane;->d(Lo/anb;Lo/alA;)Lo/anb;

    move-result-object v0

    .line 282
    invoke-interface {v0}, Lo/anb;->d()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x1

    :goto_0
    const/4 v2, 0x1

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 97
    :cond_1
    iget-object v0, p0, Lo/VrListenerService;->a:Lcom/netflix/mediaclient/acquisition/view/TermsAndConsentsComponent;

    if-eqz v0, :cond_3

    .line 98
    invoke-interface {v0}, Lcom/netflix/mediaclient/acquisition/view/TermsAndConsentsComponent;->hasAcceptedRequiredCheckBoxes()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    .line 101
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lo/VrListenerService;->notifyDataSetChanged()V

    return v2
.end method

.method public getItemCount()I
    .locals 1

    .line 260
    iget-object v0, p0, Lo/VrListenerService;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 3

    .line 106
    iget-object v0, p0, Lo/VrListenerService;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/SynthesisPlaybackQueueItem;

    .line 109
    instance-of v0, p1, Lcom/netflix/mediaclient/acquisition/viewmodels/CountryPhoneInputFieldViewModel;

    if-eqz v0, :cond_0

    const/4 p1, 0x2

    goto/16 :goto_0

    .line 110
    :cond_0
    instance-of v0, p1, Lcom/netflix/mediaclient/acquisition/viewmodels/MonthYearFieldViewModel;

    if-eqz v0, :cond_1

    const/4 p1, 0x3

    goto/16 :goto_0

    .line 111
    :cond_1
    instance-of v0, p1, Lcom/netflix/mediaclient/acquisition/viewmodels/CreditDebitCardNumberFieldViewModel;

    if-eqz v0, :cond_2

    const/4 p1, 0x6

    goto :goto_0

    .line 112
    :cond_2
    instance-of v0, p1, Lo/TrustAgentService;

    if-eqz v0, :cond_3

    const/16 p1, 0xa

    goto :goto_0

    .line 113
    :cond_3
    instance-of v0, p1, Lo/VoiceInteractionSession;

    if-eqz v0, :cond_4

    const/16 p1, 0xb

    goto :goto_0

    .line 114
    :cond_4
    instance-of v0, p1, Lcom/netflix/mediaclient/acquisition/viewmodels/BirthDateViewModel;

    if-eqz v0, :cond_5

    const/4 p1, 0x7

    goto :goto_0

    .line 115
    :cond_5
    instance-of v0, p1, Lcom/netflix/mediaclient/acquisition/viewmodels/BirthMonthViewModel;

    if-eqz v0, :cond_6

    const/16 p1, 0x8

    goto :goto_0

    .line 116
    :cond_6
    instance-of v0, p1, Lo/BoringLayout;

    if-eqz v0, :cond_7

    const/16 p1, 0x9

    goto :goto_0

    .line 117
    :cond_7
    instance-of v0, p1, Lcom/netflix/mediaclient/acquisition/viewmodels/CVVFieldViewModel;

    if-eqz v0, :cond_8

    const/4 p1, 0x4

    goto :goto_0

    .line 118
    :cond_8
    instance-of v0, p1, Lo/VoiceInteractionService;

    if-eqz v0, :cond_9

    const/16 p1, 0xc

    goto :goto_0

    .line 119
    :cond_9
    instance-of v0, p1, Lcom/netflix/mediaclient/acquisition/viewmodels/UserProfileFieldViewModel;

    if-eqz v0, :cond_a

    const/16 p1, 0xd

    goto :goto_0

    .line 120
    :cond_a
    instance-of v0, p1, Lo/RecognitionListener;

    if-eqz v0, :cond_b

    const/16 p1, 0xe

    goto :goto_0

    .line 121
    :cond_b
    instance-of v0, p1, Lo/VoiceInteractionSessionService;

    if-eqz v0, :cond_c

    const/16 p1, 0xf

    goto :goto_0

    .line 122
    :cond_c
    instance-of v0, p1, Lo/Emoji;

    if-eqz v0, :cond_e

    .line 124
    invoke-virtual {p1}, Lo/SynthesisPlaybackQueueItem;->getId()I

    move-result p1

    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->rS:I

    if-ne p1, v0, :cond_d

    const/4 p1, 0x5

    goto :goto_0

    :cond_d
    const/4 p1, 0x1

    :goto_0
    return p1

    .line 128
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown formFieldViewModel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$Intent;I)V
    .locals 5

    const-string v0, "viewHolder"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 211
    iget-object v0, p0, Lo/VrListenerService;->j:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/SynthesisPlaybackQueueItem;

    .line 212
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$Intent;->itemView:Landroid/view/View;

    const-string v2, "viewHolder.itemView"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lo/SynthesisPlaybackQueueItem;->getId()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setId(I)V

    .line 215
    instance-of v1, p1, Lo/SpeechRecognizer;

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Lo/SpeechRecognizer;

    move-object v3, v0

    check-cast v3, Lo/Emoji;

    check-cast v3, Lo/AndroidCharacter;

    invoke-virtual {v1, v3}, Lo/SpeechRecognizer;->bind(Lo/AndroidCharacter;)V

    goto/16 :goto_0

    .line 216
    :cond_0
    instance-of v1, p1, Lo/RecognizerResultsIntent;

    if-eqz v1, :cond_1

    move-object v1, p1

    check-cast v1, Lo/RecognizerResultsIntent;

    move-object v3, v0

    check-cast v3, Lo/BoringLayout;

    invoke-virtual {v1, v3}, Lo/RecognizerResultsIntent;->b(Lo/BoringLayout;)V

    goto/16 :goto_0

    .line 217
    :cond_1
    instance-of v1, p1, Lcom/netflix/mediaclient/acquisition/adapters/CountryPhoneInputFieldViewHolder;

    if-eqz v1, :cond_2

    move-object v1, p1

    check-cast v1, Lcom/netflix/mediaclient/acquisition/adapters/CountryPhoneInputFieldViewHolder;

    move-object v3, v0

    check-cast v3, Lcom/netflix/mediaclient/acquisition/viewmodels/CountryPhoneInputFieldViewModel;

    invoke-virtual {v1, v3}, Lcom/netflix/mediaclient/acquisition/adapters/CountryPhoneInputFieldViewHolder;->bind(Lcom/netflix/mediaclient/acquisition/viewmodels/CountryPhoneInputFieldViewModel;)V

    goto/16 :goto_0

    .line 218
    :cond_2
    instance-of v1, p1, Lcom/netflix/mediaclient/acquisition/adapters/MonthYearInputFieldViewHolder;

    if-eqz v1, :cond_3

    move-object v1, p1

    check-cast v1, Lcom/netflix/mediaclient/acquisition/adapters/MonthYearInputFieldViewHolder;

    move-object v3, v0

    check-cast v3, Lcom/netflix/mediaclient/acquisition/viewmodels/MonthYearFieldViewModel;

    invoke-virtual {v1, v3}, Lcom/netflix/mediaclient/acquisition/adapters/MonthYearInputFieldViewHolder;->bind(Lcom/netflix/mediaclient/acquisition/viewmodels/MonthYearFieldViewModel;)V

    goto/16 :goto_0

    .line 219
    :cond_3
    instance-of v1, p1, Lcom/netflix/mediaclient/acquisition/adapters/CreditCvvViewHolder;

    if-eqz v1, :cond_4

    move-object v1, p1

    check-cast v1, Lcom/netflix/mediaclient/acquisition/adapters/CreditCvvViewHolder;

    move-object v3, v0

    check-cast v3, Lcom/netflix/mediaclient/acquisition/viewmodels/CVVFieldViewModel;

    invoke-virtual {v1, v3}, Lcom/netflix/mediaclient/acquisition/adapters/CreditCvvViewHolder;->bind(Lcom/netflix/mediaclient/acquisition/viewmodels/CVVFieldViewModel;)V

    goto/16 :goto_0

    .line 220
    :cond_4
    instance-of v1, p1, Lcom/netflix/mediaclient/acquisition/adapters/CreditDebitCardFieldViewHolder;

    if-eqz v1, :cond_5

    move-object v1, p1

    check-cast v1, Lcom/netflix/mediaclient/acquisition/adapters/CreditDebitCardFieldViewHolder;

    move-object v3, v0

    check-cast v3, Lcom/netflix/mediaclient/acquisition/viewmodels/CreditDebitCardNumberFieldViewModel;

    check-cast v3, Lo/Emoji;

    invoke-virtual {v1, v3}, Lcom/netflix/mediaclient/acquisition/adapters/CreditDebitCardFieldViewHolder;->bind(Lo/Emoji;)V

    goto/16 :goto_0

    .line 221
    :cond_5
    instance-of v1, p1, Lcom/netflix/mediaclient/acquisition/adapters/BirthDateViewHolder;

    if-eqz v1, :cond_6

    move-object v1, p1

    check-cast v1, Lcom/netflix/mediaclient/acquisition/adapters/BirthDateViewHolder;

    move-object v3, v0

    check-cast v3, Lcom/netflix/mediaclient/acquisition/viewmodels/BirthDateViewModel;

    invoke-virtual {v1, v3}, Lcom/netflix/mediaclient/acquisition/adapters/BirthDateViewHolder;->bind(Lcom/netflix/mediaclient/acquisition/viewmodels/BirthDateViewModel;)V

    goto :goto_0

    .line 222
    :cond_6
    instance-of v1, p1, Lcom/netflix/mediaclient/acquisition/adapters/BirthMonthViewHolder;

    if-eqz v1, :cond_7

    move-object v1, p1

    check-cast v1, Lcom/netflix/mediaclient/acquisition/adapters/BirthMonthViewHolder;

    move-object v3, v0

    check-cast v3, Lcom/netflix/mediaclient/acquisition/viewmodels/BirthMonthViewModel;

    invoke-virtual {v1, v3}, Lcom/netflix/mediaclient/acquisition/adapters/BirthMonthViewHolder;->bind(Lcom/netflix/mediaclient/acquisition/viewmodels/BirthMonthViewModel;)V

    goto :goto_0

    .line 223
    :cond_7
    instance-of v1, p1, Lo/VoiceInteractionServiceInfo;

    if-eqz v1, :cond_8

    move-object v1, p1

    check-cast v1, Lo/VoiceInteractionServiceInfo;

    move-object v3, v0

    check-cast v3, Lo/VoiceInteractionSession;

    invoke-virtual {v1, v3}, Lo/VoiceInteractionServiceInfo;->b(Lo/VoiceInteractionSession;)V

    goto :goto_0

    .line 224
    :cond_8
    instance-of v1, p1, Lo/AudioPlaybackQueueItem;

    if-eqz v1, :cond_9

    move-object v1, p1

    check-cast v1, Lo/AudioPlaybackQueueItem;

    move-object v3, v0

    check-cast v3, Lo/RecognitionListener;

    invoke-virtual {v1, v3}, Lo/AudioPlaybackQueueItem;->c(Lo/RecognitionListener;)V

    goto :goto_0

    .line 225
    :cond_9
    instance-of v1, p1, Lo/SpellCheckerService;

    if-eqz v1, :cond_a

    move-object v1, p1

    check-cast v1, Lo/SpellCheckerService;

    move-object v3, v0

    check-cast v3, Lo/TrustAgentService;

    invoke-virtual {v1, v3}, Lo/SpellCheckerService;->c(Lo/TrustAgentService;)V

    goto :goto_0

    .line 226
    :cond_a
    instance-of v1, p1, Lo/AlwaysOnHotwordDetector;

    if-eqz v1, :cond_b

    move-object v1, p1

    check-cast v1, Lo/AlwaysOnHotwordDetector;

    move-object v3, v0

    check-cast v3, Lo/VoiceInteractionService;

    invoke-virtual {v1, v3}, Lo/AlwaysOnHotwordDetector;->e(Lo/VoiceInteractionService;)V

    goto :goto_0

    .line 227
    :cond_b
    instance-of v1, p1, Lo/AudioPlaybackHandler;

    if-eqz v1, :cond_c

    move-object v1, p1

    check-cast v1, Lo/AudioPlaybackHandler;

    move-object v3, v0

    check-cast v3, Lcom/netflix/mediaclient/acquisition/viewmodels/UserProfileFieldViewModel;

    invoke-virtual {v1, v3}, Lo/AudioPlaybackHandler;->d(Lcom/netflix/mediaclient/acquisition/viewmodels/UserProfileFieldViewModel;)V

    goto :goto_0

    .line 228
    :cond_c
    instance-of v1, p1, Lo/WallpaperService;

    if-eqz v1, :cond_d

    move-object v1, p1

    check-cast v1, Lo/WallpaperService;

    move-object v3, v0

    check-cast v3, Lo/VoiceInteractionSessionService;

    invoke-virtual {v1, v3}, Lo/WallpaperService;->c(Lo/VoiceInteractionSessionService;)V

    .line 231
    :cond_d
    :goto_0
    iget-object v1, p0, Lo/VrListenerService;->h:Ljava/util/Map;

    if-eqz v1, :cond_e

    invoke-virtual {v0}, Lo/SynthesisPlaybackQueueItem;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/VrListenerService$Activity;

    if-eqz v1, :cond_e

    .line 232
    invoke-interface {v1}, Lo/VrListenerService$Activity;->b()V

    .line 233
    invoke-virtual {v0}, Lo/SynthesisPlaybackQueueItem;->getId()I

    move-result v3

    iget-object v4, p1, Landroidx/recyclerview/widget/RecyclerView$Intent;->itemView:Landroid/view/View;

    invoke-static {v4, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v3, v4, v0}, Lo/VrListenerService$Activity;->d(ILandroid/view/View;Lo/SynthesisPlaybackQueueItem;)V

    .line 236
    :cond_e
    instance-of v0, p1, Lo/RecognitionService;

    if-eqz v0, :cond_f

    .line 237
    check-cast p1, Lo/RecognitionService;

    invoke-virtual {p1}, Lo/RecognitionService;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lo/VrListenerService;->e(Landroid/widget/EditText;I)V

    :cond_f
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$Intent;
    .locals 4

    const-string v0, "viewGroup"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v1, "view"

    const/4 v2, 0x0

    packed-switch p2, :pswitch_data_0

    .line 195
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown viewType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 192
    :pswitch_0
    sget p2, Lcom/netflix/mediaclient/ui/R$Dialog;->bv:I

    invoke-virtual {v0, p2, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 193
    new-instance p2, Lo/WallpaperService;

    iget-object v0, p0, Lo/VrListenerService;->d:Lo/TextClassificationManager;

    iget-object v2, p0, Lo/VrListenerService;->c:Lo/InputBinding;

    invoke-static {p1, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, v0, v2, p1}, Lo/WallpaperService;-><init>(Lo/TextClassificationManager;Lo/InputBinding;Landroid/view/View;)V

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$Intent;

    goto/16 :goto_0

    .line 164
    :pswitch_1
    sget p2, Lcom/netflix/mediaclient/ui/R$Dialog;->bv:I

    invoke-virtual {v0, p2, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 165
    new-instance p2, Lo/AudioPlaybackQueueItem;

    iget-object v0, p0, Lo/VrListenerService;->d:Lo/TextClassificationManager;

    iget-object v2, p0, Lo/VrListenerService;->c:Lo/InputBinding;

    invoke-static {p1, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, v0, v2, p1}, Lo/AudioPlaybackQueueItem;-><init>(Lo/TextClassificationManager;Lo/InputBinding;Landroid/view/View;)V

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$Intent;

    goto/16 :goto_0

    .line 176
    :pswitch_2
    sget p2, Lcom/netflix/mediaclient/ui/R$Dialog;->bn:I

    invoke-virtual {v0, p2, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 177
    new-instance p2, Lo/AudioPlaybackHandler;

    iget-object v0, p0, Lo/VrListenerService;->d:Lo/TextClassificationManager;

    iget-object v2, p0, Lo/VrListenerService;->c:Lo/InputBinding;

    iget-object v3, p0, Lo/VrListenerService;->f:Lo/UnicodeScript;

    invoke-static {p1, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, v0, v2, v3, p1}, Lo/AudioPlaybackHandler;-><init>(Lo/TextClassificationManager;Lo/InputBinding;Lo/UnicodeScript;Landroid/view/View;)V

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$Intent;

    goto/16 :goto_0

    .line 172
    :pswitch_3
    sget p2, Lcom/netflix/mediaclient/ui/R$Dialog;->bz:I

    invoke-virtual {v0, p2, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 173
    new-instance p2, Lo/AlwaysOnHotwordDetector;

    iget-object v0, p0, Lo/VrListenerService;->d:Lo/TextClassificationManager;

    iget-object v2, p0, Lo/VrListenerService;->c:Lo/InputBinding;

    iget-object v3, p0, Lo/VrListenerService;->f:Lo/UnicodeScript;

    invoke-static {p1, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, v0, v2, v3, p1}, Lo/AlwaysOnHotwordDetector;-><init>(Lo/TextClassificationManager;Lo/InputBinding;Lo/UnicodeScript;Landroid/view/View;)V

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$Intent;

    goto/16 :goto_0

    .line 168
    :pswitch_4
    sget p2, Lcom/netflix/mediaclient/ui/R$Dialog;->bu:I

    invoke-virtual {v0, p2, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 169
    new-instance p2, Lo/VoiceInteractionServiceInfo;

    iget-object v0, p0, Lo/VrListenerService;->d:Lo/TextClassificationManager;

    iget-object v2, p0, Lo/VrListenerService;->c:Lo/InputBinding;

    invoke-static {p1, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, v0, v2, p1}, Lo/VoiceInteractionServiceInfo;-><init>(Lo/TextClassificationManager;Lo/InputBinding;Landroid/view/View;)V

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$Intent;

    goto/16 :goto_0

    .line 160
    :pswitch_5
    sget p2, Lcom/netflix/mediaclient/ui/R$Dialog;->bv:I

    invoke-virtual {v0, p2, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 161
    new-instance p2, Lo/SpellCheckerService;

    iget-object v0, p0, Lo/VrListenerService;->d:Lo/TextClassificationManager;

    iget-object v2, p0, Lo/VrListenerService;->c:Lo/InputBinding;

    invoke-static {p1, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, v0, v2, p1}, Lo/SpellCheckerService;-><init>(Lo/TextClassificationManager;Lo/InputBinding;Landroid/view/View;)V

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$Intent;

    goto/16 :goto_0

    .line 188
    :pswitch_6
    sget p2, Lcom/netflix/mediaclient/ui/R$Dialog;->bz:I

    invoke-virtual {v0, p2, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 189
    new-instance p2, Lo/RecognizerResultsIntent;

    iget-object v0, p0, Lo/VrListenerService;->d:Lo/TextClassificationManager;

    iget-object v2, p0, Lo/VrListenerService;->c:Lo/InputBinding;

    invoke-static {p1, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, v0, v2, p1}, Lo/RecognizerResultsIntent;-><init>(Lo/TextClassificationManager;Lo/InputBinding;Landroid/view/View;)V

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$Intent;

    goto/16 :goto_0

    .line 184
    :pswitch_7
    sget p2, Lcom/netflix/mediaclient/ui/R$Dialog;->bu:I

    invoke-virtual {v0, p2, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 185
    new-instance p2, Lcom/netflix/mediaclient/acquisition/adapters/BirthMonthViewHolder;

    iget-object v0, p0, Lo/VrListenerService;->d:Lo/TextClassificationManager;

    iget-object v2, p0, Lo/VrListenerService;->c:Lo/InputBinding;

    invoke-static {p1, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, v0, v2, p1}, Lcom/netflix/mediaclient/acquisition/adapters/BirthMonthViewHolder;-><init>(Lo/TextClassificationManager;Lo/InputBinding;Landroid/view/View;)V

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$Intent;

    goto/16 :goto_0

    .line 180
    :pswitch_8
    sget p2, Lcom/netflix/mediaclient/ui/R$Dialog;->bu:I

    invoke-virtual {v0, p2, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 181
    new-instance p2, Lcom/netflix/mediaclient/acquisition/adapters/BirthDateViewHolder;

    iget-object v0, p0, Lo/VrListenerService;->d:Lo/TextClassificationManager;

    iget-object v2, p0, Lo/VrListenerService;->c:Lo/InputBinding;

    invoke-static {p1, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, v0, v2, p1}, Lcom/netflix/mediaclient/acquisition/adapters/BirthDateViewHolder;-><init>(Lo/TextClassificationManager;Lo/InputBinding;Landroid/view/View;)V

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$Intent;

    goto/16 :goto_0

    .line 156
    :pswitch_9
    sget p2, Lcom/netflix/mediaclient/ui/R$Dialog;->bz:I

    invoke-virtual {v0, p2, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 157
    new-instance p2, Lcom/netflix/mediaclient/acquisition/adapters/CreditDebitCardFieldViewHolder;

    iget-object v0, p0, Lo/VrListenerService;->d:Lo/TextClassificationManager;

    iget-object v2, p0, Lo/VrListenerService;->c:Lo/InputBinding;

    invoke-static {p1, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, v0, v2, p1}, Lcom/netflix/mediaclient/acquisition/adapters/CreditDebitCardFieldViewHolder;-><init>(Lo/TextClassificationManager;Lo/InputBinding;Landroid/view/View;)V

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$Intent;

    goto :goto_0

    .line 152
    :pswitch_a
    sget p2, Lcom/netflix/mediaclient/ui/R$Dialog;->bw:I

    invoke-virtual {v0, p2, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 153
    new-instance p2, Lo/SpeechRecognizer;

    iget-object v0, p0, Lo/VrListenerService;->d:Lo/TextClassificationManager;

    iget-object v2, p0, Lo/VrListenerService;->c:Lo/InputBinding;

    invoke-static {p1, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, v0, v2, p1}, Lo/SpeechRecognizer;-><init>(Lo/TextClassificationManager;Lo/InputBinding;Landroid/view/View;)V

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$Intent;

    goto :goto_0

    .line 148
    :pswitch_b
    sget p2, Lcom/netflix/mediaclient/ui/R$Dialog;->bq:I

    invoke-virtual {v0, p2, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 149
    new-instance p2, Lcom/netflix/mediaclient/acquisition/adapters/CreditCvvViewHolder;

    iget-object v0, p0, Lo/VrListenerService;->d:Lo/TextClassificationManager;

    iget-object v2, p0, Lo/VrListenerService;->c:Lo/InputBinding;

    invoke-static {p1, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, v0, v2, p1}, Lcom/netflix/mediaclient/acquisition/adapters/CreditCvvViewHolder;-><init>(Lo/TextClassificationManager;Lo/InputBinding;Landroid/view/View;)V

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$Intent;

    goto :goto_0

    .line 144
    :pswitch_c
    sget p2, Lcom/netflix/mediaclient/ui/R$Dialog;->cM:I

    invoke-virtual {v0, p2, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 145
    new-instance p2, Lcom/netflix/mediaclient/acquisition/adapters/MonthYearInputFieldViewHolder;

    iget-object v0, p0, Lo/VrListenerService;->d:Lo/TextClassificationManager;

    iget-object v2, p0, Lo/VrListenerService;->c:Lo/InputBinding;

    invoke-static {p1, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, v0, v2, p1}, Lcom/netflix/mediaclient/acquisition/adapters/MonthYearInputFieldViewHolder;-><init>(Lo/TextClassificationManager;Lo/InputBinding;Landroid/view/View;)V

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$Intent;

    goto :goto_0

    .line 140
    :pswitch_d
    sget p2, Lcom/netflix/mediaclient/ui/R$Dialog;->bs:I

    invoke-virtual {v0, p2, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 141
    new-instance p2, Lcom/netflix/mediaclient/acquisition/adapters/CountryPhoneInputFieldViewHolder;

    iget-object v0, p0, Lo/VrListenerService;->d:Lo/TextClassificationManager;

    iget-object v2, p0, Lo/VrListenerService;->c:Lo/InputBinding;

    invoke-static {p1, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, v0, v2, p1}, Lcom/netflix/mediaclient/acquisition/adapters/CountryPhoneInputFieldViewHolder;-><init>(Lo/TextClassificationManager;Lo/InputBinding;Landroid/view/View;)V

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$Intent;

    goto :goto_0

    .line 136
    :pswitch_e
    sget p2, Lcom/netflix/mediaclient/ui/R$Dialog;->bz:I

    invoke-virtual {v0, p2, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 137
    new-instance p2, Lo/SpeechRecognizer;

    iget-object v0, p0, Lo/VrListenerService;->d:Lo/TextClassificationManager;

    iget-object v2, p0, Lo/VrListenerService;->c:Lo/InputBinding;

    invoke-static {p1, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, v0, v2, p1}, Lo/SpeechRecognizer;-><init>(Lo/TextClassificationManager;Lo/InputBinding;Landroid/view/View;)V

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$Intent;

    :goto_0
    return-object p2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$Intent;)V
    .locals 2

    const-string v0, "holder"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 200
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Activity;->onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$Intent;)V

    .line 201
    instance-of v0, p1, Lo/RecognitionService;

    if-eqz v0, :cond_0

    .line 202
    move-object v0, p1

    check-cast v0, Lo/RecognitionService;

    invoke-virtual {v0}, Lo/RecognitionService;->clearDisposables()V

    .line 205
    :cond_0
    iget-object v0, p0, Lo/VrListenerService;->h:Ljava/util/Map;

    if-eqz v0, :cond_1

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$Intent;->itemView:Landroid/view/View;

    const-string v1, "holder.itemView"

    invoke-static {p1, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/VrListenerService$Activity;

    if-eqz p1, :cond_1

    .line 206
    invoke-interface {p1}, Lo/VrListenerService$Activity;->b()V

    :cond_1
    return-void
.end method
