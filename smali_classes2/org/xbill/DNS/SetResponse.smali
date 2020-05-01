.class public Lorg/xbill/DNS/SetResponse;
.super Ljava/lang/Object;
.source "SetResponse.java"


# static fields
.field static final CNAME:I = 0x4

.field static final DELEGATION:I = 0x3

.field static final DNAME:I = 0x5

.field static final NXDOMAIN:I = 0x1

.field static final NXRRSET:I = 0x2

.field static final SUCCESSFUL:I = 0x6

.field static final UNKNOWN:I

.field private static final nxdomain:Lorg/xbill/DNS/SetResponse;

.field private static final nxrrset:Lorg/xbill/DNS/SetResponse;

.field private static final unknown:Lorg/xbill/DNS/SetResponse;


# instance fields
.field private data:Ljava/lang/Object;

.field private type:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/xbill/DNS/SetResponse;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/xbill/DNS/SetResponse;-><init>(I)V

    sput-object v0, Lorg/xbill/DNS/SetResponse;->unknown:Lorg/xbill/DNS/SetResponse;

    new-instance v0, Lorg/xbill/DNS/SetResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/xbill/DNS/SetResponse;-><init>(I)V

    sput-object v0, Lorg/xbill/DNS/SetResponse;->nxdomain:Lorg/xbill/DNS/SetResponse;

    new-instance v0, Lorg/xbill/DNS/SetResponse;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/xbill/DNS/SetResponse;-><init>(I)V

    sput-object v0, Lorg/xbill/DNS/SetResponse;->nxrrset:Lorg/xbill/DNS/SetResponse;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p1, :cond_0

    const/4 v0, 0x6

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "invalid type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput p1, p0, Lorg/xbill/DNS/SetResponse;->type:I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/xbill/DNS/SetResponse;->data:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(ILorg/xbill/DNS/RRset;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p1, :cond_0

    const/4 v0, 0x6

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "invalid type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput p1, p0, Lorg/xbill/DNS/SetResponse;->type:I

    iput-object p2, p0, Lorg/xbill/DNS/SetResponse;->data:Ljava/lang/Object;

    return-void
.end method

.method static ofType(I)Lorg/xbill/DNS/SetResponse;
    .locals 2

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "invalid type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    sget-object v0, Lorg/xbill/DNS/SetResponse;->unknown:Lorg/xbill/DNS/SetResponse;

    :goto_0
    return-object v0

    :pswitch_1
    sget-object v0, Lorg/xbill/DNS/SetResponse;->nxdomain:Lorg/xbill/DNS/SetResponse;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lorg/xbill/DNS/SetResponse;->nxrrset:Lorg/xbill/DNS/SetResponse;

    goto :goto_0

    :pswitch_3
    new-instance v0, Lorg/xbill/DNS/SetResponse;

    invoke-direct {v0}, Lorg/xbill/DNS/SetResponse;-><init>()V

    iput p0, v0, Lorg/xbill/DNS/SetResponse;->type:I

    const/4 v1, 0x0

    iput-object v1, v0, Lorg/xbill/DNS/SetResponse;->data:Ljava/lang/Object;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method addRRset(Lorg/xbill/DNS/RRset;)V
    .locals 1

    iget-object v0, p0, Lorg/xbill/DNS/SetResponse;->data:Ljava/lang/Object;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/xbill/DNS/SetResponse;->data:Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lorg/xbill/DNS/SetResponse;->data:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public answers()[Lorg/xbill/DNS/RRset;
    .locals 2

    iget v0, p0, Lorg/xbill/DNS/SetResponse;->type:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/xbill/DNS/SetResponse;->data:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lorg/xbill/DNS/RRset;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/xbill/DNS/RRset;

    check-cast v0, [Lorg/xbill/DNS/RRset;

    goto :goto_0
.end method

.method public getCNAME()Lorg/xbill/DNS/CNAMERecord;
    .locals 1

    iget-object v0, p0, Lorg/xbill/DNS/SetResponse;->data:Ljava/lang/Object;

    check-cast v0, Lorg/xbill/DNS/RRset;

    invoke-virtual {v0}, Lorg/xbill/DNS/RRset;->first()Lorg/xbill/DNS/Record;

    move-result-object v0

    check-cast v0, Lorg/xbill/DNS/CNAMERecord;

    return-object v0
.end method

.method public getDNAME()Lorg/xbill/DNS/DNAMERecord;
    .locals 1

    iget-object v0, p0, Lorg/xbill/DNS/SetResponse;->data:Ljava/lang/Object;

    check-cast v0, Lorg/xbill/DNS/RRset;

    invoke-virtual {v0}, Lorg/xbill/DNS/RRset;->first()Lorg/xbill/DNS/Record;

    move-result-object v0

    check-cast v0, Lorg/xbill/DNS/DNAMERecord;

    return-object v0
.end method

.method public getNS()Lorg/xbill/DNS/RRset;
    .locals 1

    iget-object v0, p0, Lorg/xbill/DNS/SetResponse;->data:Ljava/lang/Object;

    check-cast v0, Lorg/xbill/DNS/RRset;

    return-object v0
.end method

.method public isCNAME()Z
    .locals 2

    iget v0, p0, Lorg/xbill/DNS/SetResponse;->type:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDNAME()Z
    .locals 2

    iget v0, p0, Lorg/xbill/DNS/SetResponse;->type:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDelegation()Z
    .locals 2

    iget v0, p0, Lorg/xbill/DNS/SetResponse;->type:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNXDOMAIN()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lorg/xbill/DNS/SetResponse;->type:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNXRRSET()Z
    .locals 2

    iget v0, p0, Lorg/xbill/DNS/SetResponse;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSuccessful()Z
    .locals 2

    iget v0, p0, Lorg/xbill/DNS/SetResponse;->type:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUnknown()Z
    .locals 1

    iget v0, p0, Lorg/xbill/DNS/SetResponse;->type:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lorg/xbill/DNS/SetResponse;->type:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :pswitch_0
    const-string/jumbo v0, "unknown"

    :goto_0
    return-object v0

    :pswitch_1
    const-string/jumbo v0, "NXDOMAIN"

    goto :goto_0

    :pswitch_2
    const-string/jumbo v0, "NXRRSET"

    goto :goto_0

    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "delegation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/xbill/DNS/SetResponse;->data:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "CNAME: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/xbill/DNS/SetResponse;->data:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "DNAME: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/xbill/DNS/SetResponse;->data:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_6
    const-string/jumbo v0, "successful"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
