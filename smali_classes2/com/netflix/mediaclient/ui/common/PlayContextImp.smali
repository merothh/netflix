.class public Lcom/netflix/mediaclient/ui/common/PlayContextImp;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/PlayContext;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/netflix/mediaclient/ui/common/PlayContextImp;",
            ">;"
        }
    .end annotation
.end field

.field public static a:I = 0xee82aa6

.field public static b:Lcom/netflix/mediaclient/servicemgr/PlayContext; = null

.field public static c:I = 0x0

.field public static d:I = 0x0

.field public static e:I = 0xe26207

.field public static f:I = 0x0

.field public static g:I = 0x0

.field public static h:I = 0x0

.field public static i:Lcom/netflix/mediaclient/servicemgr/PlayContext; = null

.field public static j:Lcom/netflix/mediaclient/servicemgr/PlayContext; = null

.field public static k:Lcom/netflix/mediaclient/servicemgr/PlayContext; = null

.field public static l:Lcom/netflix/mediaclient/servicemgr/PlayContext; = null

.field public static m:Lcom/netflix/mediaclient/servicemgr/PlayContext; = null

.field public static n:Lcom/netflix/mediaclient/servicemgr/PlayContext; = null

.field public static o:Lcom/netflix/mediaclient/servicemgr/PlayContext; = null

.field public static p:Lcom/netflix/mediaclient/servicemgr/PlayContext; = null

.field public static q:Lcom/netflix/mediaclient/servicemgr/PlayContext; = null

.field public static r:Lcom/netflix/mediaclient/servicemgr/PlayContext; = null

.field public static s:Lcom/netflix/mediaclient/servicemgr/PlayContext; = null

.field public static t:Lcom/netflix/mediaclient/servicemgr/PlayContext; = null

.field private static v:I = 0xd1c419

.field private static w:Ljava/lang/String; = "downloaded_"

.field private static y:I


# instance fields
.field private final A:I

.field private final B:Ljava/lang/String;

.field private final C:I

.field private final D:Ljava/lang/String;

.field private E:Lcom/netflix/mediaclient/servicemgr/PlayLocationType;

.field private final F:Lcom/netflix/mediaclient/servicemgr/PlayLocationType;

.field private G:Z

.field private I:Ljava/lang/String;

.field private final u:Ljava/lang/String;

.field private final x:I

.field private final z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 28
    new-instance v0, Lcom/netflix/mediaclient/ui/common/PlayContextImp;

    sget v1, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->a:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v2, v1, v3, v3}, Lcom/netflix/mediaclient/ui/common/PlayContextImp;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->b:Lcom/netflix/mediaclient/servicemgr/PlayContext;

    const v0, 0xc7e319

    .line 31
    sput v0, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->y:I

    const v0, 0xe8703b

    .line 32
    sput v0, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->d:I

    const v0, 0xf1c0360

    .line 33
    sput v0, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->c:I

    const v0, 0xf3a9432

    .line 34
    sput v0, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->h:I

    const v0, 0xf108bca

    .line 35
    sput v0, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->f:I

    const v0, 0xf1d1e9f

    .line 36
    sput v0, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->g:I

    .line 37
    new-instance v0, Lcom/netflix/mediaclient/ui/common/PlayContextImp;

    sget v1, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->y:I

    invoke-direct {v0, v2, v1, v3, v3}, Lcom/netflix/mediaclient/ui/common/PlayContextImp;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->i:Lcom/netflix/mediaclient/servicemgr/PlayContext;

    .line 39
    new-instance v0, Lcom/netflix/mediaclient/ui/common/PlayContextImp;

    sget v1, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->v:I

    invoke-direct {v0, v2, v1, v3, v3}, Lcom/netflix/mediaclient/ui/common/PlayContextImp;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->j:Lcom/netflix/mediaclient/servicemgr/PlayContext;

    .line 41
    new-instance v0, Lcom/netflix/mediaclient/ui/common/PlayContextImp;

    sget v1, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->e:I

    invoke-direct {v0, v2, v1, v3, v3}, Lcom/netflix/mediaclient/ui/common/PlayContextImp;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->l:Lcom/netflix/mediaclient/servicemgr/PlayContext;

    .line 42
    new-instance v0, Lcom/netflix/mediaclient/ui/common/PlayContextImp;

    const v1, 0xd2a38f

    invoke-direct {v0, v2, v1, v3, v3}, Lcom/netflix/mediaclient/ui/common/PlayContextImp;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->k:Lcom/netflix/mediaclient/servicemgr/PlayContext;

    .line 43
    new-instance v0, Lcom/netflix/mediaclient/ui/common/PlayContextImp;

    const v1, 0xcf5c22

    invoke-direct {v0, v2, v1, v3, v3}, Lcom/netflix/mediaclient/ui/common/PlayContextImp;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->n:Lcom/netflix/mediaclient/servicemgr/PlayContext;

    .line 44
    new-instance v0, Lcom/netflix/mediaclient/ui/common/PlayContextImp;

    sget v6, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->d:I

    sget-object v9, Lcom/netflix/mediaclient/servicemgr/PlayLocationType;->i:Lcom/netflix/mediaclient/servicemgr/PlayLocationType;

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v4, v0

    invoke-direct/range {v4 .. v13}, Lcom/netflix/mediaclient/ui/common/PlayContextImp;-><init>(Ljava/lang/String;IIILcom/netflix/mediaclient/servicemgr/PlayLocationType;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->m:Lcom/netflix/mediaclient/servicemgr/PlayContext;

    .line 45
    new-instance v0, Lcom/netflix/mediaclient/ui/common/PlayContextImp;

    const v1, 0xee8160f

    invoke-direct {v0, v2, v1, v3, v3}, Lcom/netflix/mediaclient/ui/common/PlayContextImp;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->o:Lcom/netflix/mediaclient/servicemgr/PlayContext;

    .line 46
    new-instance v0, Lcom/netflix/mediaclient/ui/common/PlayContextImp;

    const v1, 0xee7f6e7

    invoke-direct {v0, v2, v1, v3, v3}, Lcom/netflix/mediaclient/ui/common/PlayContextImp;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->p:Lcom/netflix/mediaclient/servicemgr/PlayContext;

    .line 47
    new-instance v0, Lcom/netflix/mediaclient/ui/common/PlayContextImp;

    const v1, 0xe8b38b

    invoke-direct {v0, v2, v1, v3, v3}, Lcom/netflix/mediaclient/ui/common/PlayContextImp;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->q:Lcom/netflix/mediaclient/servicemgr/PlayContext;

    .line 48
    new-instance v0, Lcom/netflix/mediaclient/ui/common/PlayContextImp;

    sget v6, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->c:I

    sget-object v9, Lcom/netflix/mediaclient/servicemgr/PlayLocationType;->i:Lcom/netflix/mediaclient/servicemgr/PlayLocationType;

    move-object v4, v0

    invoke-direct/range {v4 .. v13}, Lcom/netflix/mediaclient/ui/common/PlayContextImp;-><init>(Ljava/lang/String;IIILcom/netflix/mediaclient/servicemgr/PlayLocationType;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->r:Lcom/netflix/mediaclient/servicemgr/PlayContext;

    .line 49
    new-instance v0, Lcom/netflix/mediaclient/ui/common/PlayContextImp;

    const v1, 0xf36bf84

    invoke-direct {v0, v2, v1, v3, v3}, Lcom/netflix/mediaclient/ui/common/PlayContextImp;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->t:Lcom/netflix/mediaclient/servicemgr/PlayContext;

    .line 51
    new-instance v0, Lcom/netflix/mediaclient/ui/common/PlayContextImp;

    const v1, 0xa98ac7

    invoke-direct {v0, v2, v1, v3, v3}, Lcom/netflix/mediaclient/ui/common/PlayContextImp;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->s:Lcom/netflix/mediaclient/servicemgr/PlayContext;

    .line 174
    new-instance v0, Lcom/netflix/mediaclient/ui/common/PlayContextImp$5;

    invoke-direct {v0}, Lcom/netflix/mediaclient/ui/common/PlayContextImp$5;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 11

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/netflix/mediaclient/servicemgr/PlayLocationType;

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v6, 0x1

    if-ne v0, v6, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v6, 0x0

    .line 117
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    move-object v0, p0

    .line 111
    invoke-direct/range {v0 .. v10}, Lcom/netflix/mediaclient/ui/common/PlayContextImp;-><init>(Ljava/lang/String;IIILcom/netflix/mediaclient/servicemgr/PlayLocationType;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;III)V
    .locals 11

    .line 106
    sget-object v5, Lcom/netflix/mediaclient/servicemgr/PlayLocationType;->b:Lcom/netflix/mediaclient/servicemgr/PlayLocationType;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, ""

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v10}, Lcom/netflix/mediaclient/ui/common/PlayContextImp;-><init>(Ljava/lang/String;IIILcom/netflix/mediaclient/servicemgr/PlayLocationType;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIILcom/netflix/mediaclient/servicemgr/PlayLocationType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    const/4 v6, 0x0

    const-string v9, ""

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object/from16 v5, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v10, p8

    .line 93
    invoke-direct/range {v0 .. v10}, Lcom/netflix/mediaclient/ui/common/PlayContextImp;-><init>(Ljava/lang/String;IIILcom/netflix/mediaclient/servicemgr/PlayLocationType;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIILcom/netflix/mediaclient/servicemgr/PlayLocationType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object/from16 v5, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    .line 97
    invoke-direct/range {v0 .. v10}, Lcom/netflix/mediaclient/ui/common/PlayContextImp;-><init>(Ljava/lang/String;IIILcom/netflix/mediaclient/servicemgr/PlayLocationType;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIILcom/netflix/mediaclient/servicemgr/PlayLocationType;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    const-string v9, ""

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v10, p9

    .line 89
    invoke-direct/range {v0 .. v10}, Lcom/netflix/mediaclient/ui/common/PlayContextImp;-><init>(Ljava/lang/String;IIILcom/netflix/mediaclient/servicemgr/PlayLocationType;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;IIILcom/netflix/mediaclient/servicemgr/PlayLocationType;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->u:Ljava/lang/String;

    .line 127
    iput p2, p0, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->x:I

    .line 128
    iput p3, p0, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->A:I

    .line 129
    iput p4, p0, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->C:I

    .line 130
    iput-object p5, p0, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->E:Lcom/netflix/mediaclient/servicemgr/PlayLocationType;

    .line 131
    iput-object p5, p0, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->F:Lcom/netflix/mediaclient/servicemgr/PlayLocationType;

    .line 132
    iput-boolean p6, p0, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->G:Z

    .line 133
    iput-object p7, p0, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->B:Ljava/lang/String;

    .line 134
    iput-object p8, p0, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->z:Ljava/lang/String;

    .line 135
    iput-object p10, p0, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->D:Ljava/lang/String;

    .line 136
    iput-object p9, p0, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->I:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIILjava/lang/String;)V
    .locals 11

    .line 101
    sget-object v5, Lcom/netflix/mediaclient/servicemgr/PlayLocationType;->b:Lcom/netflix/mediaclient/servicemgr/PlayLocationType;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, ""

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object/from16 v10, p5

    invoke-direct/range {v0 .. v10}, Lcom/netflix/mediaclient/ui/common/PlayContextImp;-><init>(Ljava/lang/String;IIILcom/netflix/mediaclient/servicemgr/PlayLocationType;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lo/Bv;ILjava/lang/String;Lcom/netflix/mediaclient/servicemgr/PlayLocationType;Ljava/lang/String;)V
    .locals 7

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    .line 140
    invoke-direct/range {v0 .. v6}, Lcom/netflix/mediaclient/ui/common/PlayContextImp;-><init>(Lo/Bv;ILjava/lang/String;Lcom/netflix/mediaclient/servicemgr/PlayLocationType;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lo/Bv;ILjava/lang/String;Lcom/netflix/mediaclient/servicemgr/PlayLocationType;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    .line 149
    invoke-interface {p1}, Lo/Bv;->getRequestId()Ljava/lang/String;

    move-result-object v1

    .line 150
    invoke-interface {p1}, Lo/Bv;->getTrackId()I

    move-result v2

    .line 151
    invoke-interface {p1}, Lo/Bv;->getListPos()I

    move-result v3

    .line 155
    invoke-interface {p1}, Lo/Bv;->getListId()Ljava/lang/String;

    move-result-object v7

    move-object v0, p0

    move v4, p2

    move-object v5, p4

    move-object v6, p3

    move-object v8, p5

    move-object/from16 v9, p6

    .line 149
    invoke-direct/range {v0 .. v9}, Lcom/netflix/mediaclient/ui/common/PlayContextImp;-><init>(Ljava/lang/String;IIILcom/netflix/mediaclient/servicemgr/PlayLocationType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final f()Lcom/netflix/mediaclient/servicemgr/PlayContext;
    .locals 13

    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->w:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 189
    new-instance v0, Lcom/netflix/mediaclient/ui/common/PlayContextImp;

    sget v5, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->d:I

    sget-object v8, Lcom/netflix/mediaclient/servicemgr/PlayLocationType;->i:Lcom/netflix/mediaclient/servicemgr/PlayLocationType;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v3, v0

    invoke-direct/range {v3 .. v12}, Lcom/netflix/mediaclient/ui/common/PlayContextImp;-><init>(Ljava/lang/String;IIILcom/netflix/mediaclient/servicemgr/PlayLocationType;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public a()Lcom/netflix/mediaclient/servicemgr/PlayLocationType;
    .locals 1

    .line 227
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->E:Lcom/netflix/mediaclient/servicemgr/PlayLocationType;

    return-object v0
.end method

.method public a(I)Lcom/netflix/mediaclient/ui/common/PlayContextImp;
    .locals 12

    .line 282
    new-instance v11, Lcom/netflix/mediaclient/ui/common/PlayContextImp;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->getListPos()I

    move-result v3

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->c()I

    move-result v4

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->a()Lcom/netflix/mediaclient/servicemgr/PlayLocationType;

    move-result-object v5

    .line 283
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->e()Z

    move-result v6

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->d()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->d()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->g()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->b()Ljava/lang/String;

    move-result-object v10

    move-object v0, v11

    move v2, p1

    invoke-direct/range {v0 .. v10}, Lcom/netflix/mediaclient/ui/common/PlayContextImp;-><init>(Ljava/lang/String;IIILcom/netflix/mediaclient/servicemgr/PlayLocationType;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v11
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->D:Ljava/lang/String;

    return-object v0
.end method

.method public b(Lcom/netflix/mediaclient/servicemgr/PlayLocationType;)V
    .locals 0

    .line 238
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->E:Lcom/netflix/mediaclient/servicemgr/PlayLocationType;

    return-void
.end method

.method public c()I
    .locals 1

    .line 221
    iget v0, p0, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->C:I

    return v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 320
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->I:Ljava/lang/String;

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 254
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->B:Ljava/lang/String;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e(Z)V
    .locals 0

    .line 243
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->G:Z

    return-void
.end method

.method public e()Z
    .locals 1

    .line 248
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->G:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 292
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 296
    :cond_1
    check-cast p1, Lcom/netflix/mediaclient/ui/common/PlayContextImp;

    .line 297
    iget v2, p0, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->x:I

    iget v3, p1, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->x:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->A:I

    iget v3, p1, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->A:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->C:I

    iget v3, p1, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->C:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->u:Ljava/lang/String;

    iget-object v3, p1, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->u:Ljava/lang/String;

    .line 300
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->B:Ljava/lang/String;

    iget-object v3, p1, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->B:Ljava/lang/String;

    .line 301
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->z:Ljava/lang/String;

    iget-object v3, p1, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->z:Ljava/lang/String;

    .line 302
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->D:Ljava/lang/String;

    iget-object p1, p1, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->D:Ljava/lang/String;

    .line 303
    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .line 315
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->I:Ljava/lang/String;

    return-object v0
.end method

.method public getImpressionToken()Ljava/lang/String;
    .locals 2

    .line 278
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Should not be needed"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getListContext()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getListId()Ljava/lang/String;
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->z:Ljava/lang/String;

    return-object v0
.end method

.method public getListPos()I
    .locals 1

    .line 199
    iget v0, p0, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->A:I

    return v0
.end method

.method public getRequestId()Ljava/lang/String;
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->u:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackId()I
    .locals 1

    .line 194
    iget v0, p0, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->x:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PlayContextImp [requestId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->u:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", trackId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", lolomoId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->B:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", listId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->z:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", imageKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->D:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", listPos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->A:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", videoPos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->C:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", playLocation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->E:Lcom/netflix/mediaclient/servicemgr/PlayLocationType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", uiPlayContextTag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->I:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", browsePlay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->G:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 162
    iget-object p2, p0, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->u:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 163
    iget p2, p0, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->x:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 164
    iget p2, p0, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->A:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 165
    iget p2, p0, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->C:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 166
    iget-object p2, p0, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->E:Lcom/netflix/mediaclient/servicemgr/PlayLocationType;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 167
    iget-boolean p2, p0, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->G:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 168
    iget-object p2, p0, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->B:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 169
    iget-object p2, p0, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->z:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 170
    iget-object p2, p0, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->I:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 171
    iget-object p2, p0, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->D:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
