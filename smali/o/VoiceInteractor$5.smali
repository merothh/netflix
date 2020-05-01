.class Lo/VoiceInteractor$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/appcompat/widget/ContentFrameLayout$OnAttachListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/VoiceInteractor;->v()Landroid/view/ViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/VoiceInteractor;


# direct methods
.method constructor <init>(Lo/VoiceInteractor;)V
    .locals 0

    .line 715
    iput-object p1, p0, Lo/VoiceInteractor$5;->b:Lo/VoiceInteractor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAttachedFromWindow()V
    .locals 0

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 721
    iget-object v0, p0, Lo/VoiceInteractor$5;->b:Lo/VoiceInteractor;

    invoke-virtual {v0}, Lo/VoiceInteractor;->r()V

    return-void
.end method
