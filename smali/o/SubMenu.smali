.class public final Lo/SubMenu;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/SubMenu$Application;
    }
.end annotation


# static fields
.field public static final c:Lo/SubMenu$Application;


# instance fields
.field private final a:Lo/SoundEffectConstants;

.field private final b:Z

.field private final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/SubMenu$Application;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/SubMenu$Application;-><init>(Lo/amc;)V

    sput-object v0, Lo/SubMenu;->c:Lo/SubMenu$Application;

    return-void
.end method

.method public constructor <init>(Lo/InputBinding;Lo/SoundEffectConstants;)V
    .locals 1

    const-string v0, "stringProvider"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "emailPreferenceParsedData"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lo/SubMenu;->a:Lo/SoundEffectConstants;

    .line 17
    iget-object p2, p0, Lo/SubMenu;->a:Lo/SoundEffectConstants;

    invoke-virtual {p2}, Lo/SoundEffectConstants;->e()Lcom/netflix/android/moneyball/fields/BooleanField;

    move-result-object p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, p0, Lo/SubMenu;->b:Z

    .line 30
    iget-object p2, p0, Lo/SubMenu;->a:Lo/SoundEffectConstants;

    invoke-virtual {p2}, Lo/SoundEffectConstants;->a()Ljava/lang/String;

    move-result-object p2

    const-string v0, "email_consent_opt_in"

    invoke-static {v0, p2}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 31
    sget p2, Lcom/netflix/mediaclient/ui/R$AssistContent;->gw:I

    invoke-virtual {p1, p2}, Lo/InputBinding;->c(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 33
    :cond_1
    sget p2, Lcom/netflix/mediaclient/ui/R$AssistContent;->gz:I

    invoke-virtual {p1, p2}, Lo/InputBinding;->c(I)Ljava/lang/String;

    move-result-object p1

    .line 30
    :goto_1
    iput-object p1, p0, Lo/SubMenu;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 1

    .line 21
    iget-object v0, p0, Lo/SubMenu;->a:Lo/SoundEffectConstants;

    invoke-virtual {v0}, Lo/SoundEffectConstants;->e()Lcom/netflix/android/moneyball/fields/BooleanField;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/netflix/android/moneyball/fields/BooleanField;->setValue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lo/SubMenu;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Z
    .locals 2

    .line 24
    iget-object v0, p0, Lo/SubMenu;->a:Lo/SoundEffectConstants;

    invoke-virtual {v0}, Lo/SoundEffectConstants;->e()Lcom/netflix/android/moneyball/fields/BooleanField;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 25
    invoke-virtual {v0}, Lcom/netflix/android/moneyball/fields/BooleanField;->getValue()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x1

    .line 26
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final e()Z
    .locals 1

    .line 17
    iget-boolean v0, p0, Lo/SubMenu;->b:Z

    return v0
.end method
