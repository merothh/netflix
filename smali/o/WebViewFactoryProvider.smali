.class public final Lo/WebViewFactoryProvider;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/WebViewFactoryProvider$TaskDescription;
    }
.end annotation


# static fields
.field private static final a:Lo/WebViewFactoryProvider;

.field public static final b:Lo/WebViewFactoryProvider$TaskDescription;

.field private static final e:Lo/WebViewFactoryProvider;

.field private static final f:Lo/WebViewFactoryProvider;

.field private static final g:Lo/WebViewFactoryProvider;

.field private static final h:Lo/WebViewFactoryProvider;

.field private static final i:Lo/WebViewFactoryProvider;

.field private static final j:Lo/WebViewFactoryProvider;

.field private static final k:Lo/WebViewFactoryProvider;

.field private static final l:Lo/WebViewFactoryProvider;

.field private static final m:Lo/WebViewFactoryProvider;

.field private static final n:Lo/WebViewFactoryProvider;

.field private static final o:Lo/WebViewFactoryProvider;

.field private static final q:Lo/WebViewFactoryProvider;


# instance fields
.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lo/WebViewFactoryProvider$TaskDescription;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/WebViewFactoryProvider$TaskDescription;-><init>(Lo/amc;)V

    sput-object v0, Lo/WebViewFactoryProvider;->b:Lo/WebViewFactoryProvider$TaskDescription;

    .line 11
    sget-object v0, Lo/TextViewMetrics;->e:Lo/TextViewMetrics;

    .line 28
    const-class v0, Landroid/content/Context;

    invoke-static {v0}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 11
    invoke-static {v0}, Landroid/provider/Telephony$Sms;->getDefaultSmsPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.google.android.apps.messaging"

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 10
    :goto_0
    new-instance v2, Lo/WebViewFactoryProvider;

    const-string v3, "dsms"

    invoke-direct {v2, v0, v3}, Lo/WebViewFactoryProvider;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lo/WebViewFactoryProvider;->e:Lo/WebViewFactoryProvider;

    .line 13
    new-instance v0, Lo/WebViewFactoryProvider;

    const-string v2, "com.facebook.katana"

    const-string v3, "fb"

    invoke-direct {v0, v2, v3}, Lo/WebViewFactoryProvider;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lo/WebViewFactoryProvider;->a:Lo/WebViewFactoryProvider;

    .line 14
    new-instance v0, Lo/WebViewFactoryProvider;

    const-string v2, "com.facebook.lite"

    const-string v3, "fb_lite"

    invoke-direct {v0, v2, v3}, Lo/WebViewFactoryProvider;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lo/WebViewFactoryProvider;->g:Lo/WebViewFactoryProvider;

    .line 15
    new-instance v0, Lo/WebViewFactoryProvider;

    const-string v2, "com.facebook.orca"

    const-string v3, "fbm"

    invoke-direct {v0, v2, v3}, Lo/WebViewFactoryProvider;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lo/WebViewFactoryProvider;->j:Lo/WebViewFactoryProvider;

    .line 16
    new-instance v0, Lo/WebViewFactoryProvider;

    const-string v2, "com.facebook.mlite"

    const-string v3, "fbm_lite"

    invoke-direct {v0, v2, v3}, Lo/WebViewFactoryProvider;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lo/WebViewFactoryProvider;->f:Lo/WebViewFactoryProvider;

    .line 17
    new-instance v0, Lo/WebViewFactoryProvider;

    const-string v2, "com.instagram.android"

    const-string v3, "ig"

    invoke-direct {v0, v2, v3}, Lo/WebViewFactoryProvider;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lo/WebViewFactoryProvider;->h:Lo/WebViewFactoryProvider;

    .line 18
    new-instance v0, Lo/WebViewFactoryProvider;

    const-string v2, "jp.naver.line.android"

    const-string v3, "lin"

    invoke-direct {v0, v2, v3}, Lo/WebViewFactoryProvider;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lo/WebViewFactoryProvider;->i:Lo/WebViewFactoryProvider;

    .line 19
    new-instance v0, Lo/WebViewFactoryProvider;

    const-string v2, "com.snapchat.android"

    const-string v3, "snc"

    invoke-direct {v0, v2, v3}, Lo/WebViewFactoryProvider;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lo/WebViewFactoryProvider;->l:Lo/WebViewFactoryProvider;

    .line 20
    new-instance v0, Lo/WebViewFactoryProvider;

    const-string v2, "com.twitter.android"

    const-string v3, "twt"

    invoke-direct {v0, v2, v3}, Lo/WebViewFactoryProvider;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lo/WebViewFactoryProvider;->k:Lo/WebViewFactoryProvider;

    .line 21
    new-instance v0, Lo/WebViewFactoryProvider;

    const-string v2, "com.whatsapp"

    const-string v3, "wha"

    invoke-direct {v0, v2, v3}, Lo/WebViewFactoryProvider;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lo/WebViewFactoryProvider;->n:Lo/WebViewFactoryProvider;

    .line 22
    new-instance v0, Lo/WebViewFactoryProvider;

    const-string v2, "com.kakao.talk"

    const-string v3, "kakao_talk"

    invoke-direct {v0, v2, v3}, Lo/WebViewFactoryProvider;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lo/WebViewFactoryProvider;->o:Lo/WebViewFactoryProvider;

    .line 23
    new-instance v0, Lo/WebViewFactoryProvider;

    const-string v2, "com.google.android.gm"

    const-string v3, "gmail"

    invoke-direct {v0, v2, v3}, Lo/WebViewFactoryProvider;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lo/WebViewFactoryProvider;->m:Lo/WebViewFactoryProvider;

    .line 24
    new-instance v0, Lo/WebViewFactoryProvider;

    const-string v2, "android_messages"

    invoke-direct {v0, v1, v2}, Lo/WebViewFactoryProvider;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lo/WebViewFactoryProvider;->q:Lo/WebViewFactoryProvider;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "trackId"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/WebViewFactoryProvider;->d:Ljava/lang/String;

    iput-object p2, p0, Lo/WebViewFactoryProvider;->c:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic a()Lo/WebViewFactoryProvider;
    .locals 1

    .line 6
    sget-object v0, Lo/WebViewFactoryProvider;->e:Lo/WebViewFactoryProvider;

    return-object v0
.end method

.method public static final synthetic c()Lo/WebViewFactoryProvider;
    .locals 1

    .line 6
    sget-object v0, Lo/WebViewFactoryProvider;->a:Lo/WebViewFactoryProvider;

    return-object v0
.end method

.method public static final synthetic d()Lo/WebViewFactoryProvider;
    .locals 1

    .line 6
    sget-object v0, Lo/WebViewFactoryProvider;->g:Lo/WebViewFactoryProvider;

    return-object v0
.end method

.method public static final synthetic f()Lo/WebViewFactoryProvider;
    .locals 1

    .line 6
    sget-object v0, Lo/WebViewFactoryProvider;->j:Lo/WebViewFactoryProvider;

    return-object v0
.end method

.method public static final synthetic g()Lo/WebViewFactoryProvider;
    .locals 1

    .line 6
    sget-object v0, Lo/WebViewFactoryProvider;->h:Lo/WebViewFactoryProvider;

    return-object v0
.end method

.method public static final synthetic h()Lo/WebViewFactoryProvider;
    .locals 1

    .line 6
    sget-object v0, Lo/WebViewFactoryProvider;->i:Lo/WebViewFactoryProvider;

    return-object v0
.end method

.method public static final synthetic i()Lo/WebViewFactoryProvider;
    .locals 1

    .line 6
    sget-object v0, Lo/WebViewFactoryProvider;->f:Lo/WebViewFactoryProvider;

    return-object v0
.end method

.method public static final synthetic j()Lo/WebViewFactoryProvider;
    .locals 1

    .line 6
    sget-object v0, Lo/WebViewFactoryProvider;->l:Lo/WebViewFactoryProvider;

    return-object v0
.end method

.method public static final synthetic k()Lo/WebViewFactoryProvider;
    .locals 1

    .line 6
    sget-object v0, Lo/WebViewFactoryProvider;->m:Lo/WebViewFactoryProvider;

    return-object v0
.end method

.method public static final synthetic l()Lo/WebViewFactoryProvider;
    .locals 1

    .line 6
    sget-object v0, Lo/WebViewFactoryProvider;->n:Lo/WebViewFactoryProvider;

    return-object v0
.end method

.method public static final synthetic m()Lo/WebViewFactoryProvider;
    .locals 1

    .line 6
    sget-object v0, Lo/WebViewFactoryProvider;->k:Lo/WebViewFactoryProvider;

    return-object v0
.end method

.method public static final synthetic n()Lo/WebViewFactoryProvider;
    .locals 1

    .line 6
    sget-object v0, Lo/WebViewFactoryProvider;->q:Lo/WebViewFactoryProvider;

    return-object v0
.end method

.method public static final synthetic o()Lo/WebViewFactoryProvider;
    .locals 1

    .line 6
    sget-object v0, Lo/WebViewFactoryProvider;->o:Lo/WebViewFactoryProvider;

    return-object v0
.end method


# virtual methods
.method public final b()Ljava/lang/String;
    .locals 1

    .line 6
    iget-object v0, p0, Lo/WebViewFactoryProvider;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .line 6
    iget-object v0, p0, Lo/WebViewFactoryProvider;->c:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lo/WebViewFactoryProvider;

    if-eqz v0, :cond_0

    check-cast p1, Lo/WebViewFactoryProvider;

    iget-object v0, p0, Lo/WebViewFactoryProvider;->d:Ljava/lang/String;

    iget-object v1, p1, Lo/WebViewFactoryProvider;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/WebViewFactoryProvider;->c:Ljava/lang/String;

    iget-object p1, p1, Lo/WebViewFactoryProvider;->c:Ljava/lang/String;

    invoke-static {v0, p1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lo/WebViewFactoryProvider;->d:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lo/WebViewFactoryProvider;->c:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "App(packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/WebViewFactoryProvider;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", trackId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/WebViewFactoryProvider;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
