.class final Lcom/netflix/mediaclient/acquisition2/screens/registration/RegistrationFragment$ActionBar;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/acquisition2/screens/registration/RegistrationFragment;->C()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/netflix/mediaclient/acquisition2/screens/registration/RegistrationFragment;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/acquisition2/screens/registration/RegistrationFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/registration/RegistrationFragment$ActionBar;->b:Lcom/netflix/mediaclient/acquisition2/screens/registration/RegistrationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 126
    iget-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/registration/RegistrationFragment$ActionBar;->b:Lcom/netflix/mediaclient/acquisition2/screens/registration/RegistrationFragment;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/acquisition2/screens/registration/RegistrationFragment;->n()Lo/TextureLayer;

    move-result-object p1

    invoke-virtual {p1}, Lo/TextureLayer;->o()Lo/SubMenu;

    move-result-object p1

    invoke-virtual {p1, p2}, Lo/SubMenu;->a(Z)V

    return-void
.end method
