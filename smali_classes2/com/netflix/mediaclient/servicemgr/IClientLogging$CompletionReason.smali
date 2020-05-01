.class public final enum Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation runtime Lcom/netflix/binder/UsedByReflection;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/servicemgr/IClientLogging;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CompletionReason"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

.field public static final enum b:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

.field public static final enum d:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

.field private static final synthetic e:[Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 162
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    const/4 v1, 0x0

    const-string v2, "success"

    invoke-direct {v0, v2, v1}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->a:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    .line 163
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    const/4 v2, 0x1

    const-string v3, "canceled"

    invoke-direct {v0, v3, v2}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->b:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    .line 164
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    const/4 v3, 0x2

    const-string v4, "failed"

    invoke-direct {v0, v4, v3}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->d:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    .line 160
    sget-object v4, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->a:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    aput-object v4, v0, v1

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->b:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->d:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    aput-object v1, v0, v3

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->e:[Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 161
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static c(Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface$Reason;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;
    .locals 3

    .line 171
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$3;->d:[I

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface$Reason;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 174
    sget-object p0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->d:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    return-object p0

    .line 176
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid image loader reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 173
    :cond_1
    sget-object p0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->b:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    return-object p0

    .line 172
    :cond_2
    sget-object p0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->a:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;
    .locals 1

    .line 160
    const-class v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    return-object p0
.end method

.method public static values()[Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;
    .locals 1

    .line 160
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->e:[Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface$Reason;
    .locals 3

    .line 183
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$3;->b:[I

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 186
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface$Reason;->a:Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface$Reason;

    return-object v0

    .line 188
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid completion reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 185
    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface$Reason;->c:Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface$Reason;

    return-object v0

    .line 184
    :cond_2
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface$Reason;->b:Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface$Reason;

    return-object v0
.end method
