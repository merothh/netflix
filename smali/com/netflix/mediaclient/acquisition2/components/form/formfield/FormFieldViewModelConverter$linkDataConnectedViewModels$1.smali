.class public final Lcom/netflix/mediaclient/acquisition2/components/form/formfield/FormFieldViewModelConverter$linkDataConnectedViewModels$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alN;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/SynthesisRequest;->b(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alN<",
        "Lo/VoiceInteractionService;",
        "Lo/VoiceInteractionSession;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# static fields
.field public static final c:Lcom/netflix/mediaclient/acquisition2/components/form/formfield/FormFieldViewModelConverter$linkDataConnectedViewModels$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/netflix/mediaclient/acquisition2/components/form/formfield/FormFieldViewModelConverter$linkDataConnectedViewModels$1;

    invoke-direct {v0}, Lcom/netflix/mediaclient/acquisition2/components/form/formfield/FormFieldViewModelConverter$linkDataConnectedViewModels$1;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/acquisition2/components/form/formfield/FormFieldViewModelConverter$linkDataConnectedViewModels$1;->c:Lcom/netflix/mediaclient/acquisition2/components/form/formfield/FormFieldViewModelConverter$linkDataConnectedViewModels$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b(Lo/VoiceInteractionService;Lo/VoiceInteractionSession;)V
    .locals 1

    const-string v0, "accountNumberViewModel"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bankChoiceViewModel"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-virtual {p2}, Lo/VoiceInteractionSession;->b()Lo/Cloneable;

    move-result-object p2

    invoke-virtual {p1, p2}, Lo/VoiceInteractionService;->c(Lo/Cloneable;)V

    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 25
    check-cast p1, Lo/VoiceInteractionService;

    check-cast p2, Lo/VoiceInteractionSession;

    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/acquisition2/components/form/formfield/FormFieldViewModelConverter$linkDataConnectedViewModels$1;->b(Lo/VoiceInteractionService;Lo/VoiceInteractionSession;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
