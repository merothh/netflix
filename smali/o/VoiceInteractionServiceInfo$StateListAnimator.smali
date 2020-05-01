.class final Lo/VoiceInteractionServiceInfo$StateListAnimator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/VoiceInteractionServiceInfo;->d(Lo/VoiceInteractionSession;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/VoiceInteractionServiceInfo;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:[Ljava/lang/String;

.field final synthetic d:Lo/VoiceInteractionSession;


# direct methods
.method constructor <init>(Lo/VoiceInteractionServiceInfo;Lo/VoiceInteractionSession;Ljava/util/List;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lo/VoiceInteractionServiceInfo$StateListAnimator;->a:Lo/VoiceInteractionServiceInfo;

    iput-object p2, p0, Lo/VoiceInteractionServiceInfo$StateListAnimator;->d:Lo/VoiceInteractionSession;

    iput-object p3, p0, Lo/VoiceInteractionServiceInfo$StateListAnimator;->b:Ljava/util/List;

    iput-object p4, p0, Lo/VoiceInteractionServiceInfo$StateListAnimator;->c:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 40
    iget-object v0, p0, Lo/VoiceInteractionServiceInfo$StateListAnimator;->d:Lo/VoiceInteractionSession;

    invoke-virtual {v0}, Lo/VoiceInteractionSession;->c()Lo/FileSynthesisCallback;

    move-result-object v0

    iget-object v1, p0, Lo/VoiceInteractionServiceInfo$StateListAnimator;->b:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lo/FileSynthesisCallback;->b(Ljava/lang/Object;)V

    .line 41
    iget-object v0, p0, Lo/VoiceInteractionServiceInfo$StateListAnimator;->a:Lo/VoiceInteractionServiceInfo;

    invoke-virtual {v0}, Lo/VoiceInteractionServiceInfo;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lo/VoiceInteractionServiceInfo$StateListAnimator;->c:[Ljava/lang/String;

    aget-object v1, v1, p2

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 42
    iget-object v0, p0, Lo/VoiceInteractionServiceInfo$StateListAnimator;->d:Lo/VoiceInteractionSession;

    iget-object v1, p0, Lo/VoiceInteractionServiceInfo$StateListAnimator;->b:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lo/VoiceInteractionServiceInfo$StateListAnimator;->d:Lo/VoiceInteractionSession;

    invoke-virtual {v2}, Lo/VoiceInteractionSession;->c()Lo/FileSynthesisCallback;

    move-result-object v2

    invoke-interface {v2}, Lo/FileSynthesisCallback;->c()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/netflix/android/moneyball/fields/OptionField;

    invoke-virtual {v0, v1, p2}, Lo/VoiceInteractionSession;->a(Ljava/lang/String;Lcom/netflix/android/moneyball/fields/OptionField;)V

    .line 43
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
