.class final Lcom/ibm/icu/impl/UnicodeSetStringSpan$OffsetList;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/UnicodeSetStringSpan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OffsetList"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private length:I

.field private list:[I

.field private start:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1028
    const-class v0, Lcom/ibm/icu/impl/UnicodeSetStringSpan;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1033
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [I

    .line 1034
    iput-object v0, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan$OffsetList;->list:[I

    return-void
.end method


# virtual methods
.method public addOffset(I)V
    .locals 2

    .line 1079
    iget v0, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan$OffsetList;->start:I

    add-int/2addr v0, p1

    .line 1080
    iget-object p1, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan$OffsetList;->list:[I

    array-length v1, p1

    if-lt v0, v1, :cond_0

    .line 1081
    array-length p1, p1

    sub-int/2addr v0, p1

    .line 1084
    :cond_0
    iget-object p1, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan$OffsetList;->list:[I

    const/4 v1, 0x1

    aput v1, p1, v0

    .line 1085
    iget p1, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan$OffsetList;->length:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan$OffsetList;->length:I

    return-void
.end method

.method public addOffsetAndCount(II)V
    .locals 2

    .line 1095
    iget v0, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan$OffsetList;->start:I

    add-int/2addr v0, p1

    .line 1096
    iget-object p1, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan$OffsetList;->list:[I

    array-length v1, p1

    if-lt v0, v1, :cond_0

    .line 1097
    array-length p1, p1

    sub-int/2addr v0, p1

    .line 1099
    :cond_0
    iget-object p1, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan$OffsetList;->list:[I

    aget v1, p1, v0

    if-nez v1, :cond_1

    .line 1100
    aput p2, p1, v0

    .line 1101
    iget p1, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan$OffsetList;->length:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan$OffsetList;->length:I

    goto :goto_0

    .line 1102
    :cond_1
    aget v1, p1, v0

    if-ge p2, v1, :cond_2

    .line 1103
    aput p2, p1, v0

    :cond_2
    :goto_0
    return-void
.end method

.method public clear()V
    .locals 3

    .line 1045
    iget-object v0, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan$OffsetList;->list:[I

    array-length v0, v0

    :goto_0
    add-int/lit8 v1, v0, -0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    .line 1046
    iget-object v0, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan$OffsetList;->list:[I

    aput v2, v0, v1

    move v0, v1

    goto :goto_0

    .line 1048
    :cond_0
    iput v2, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan$OffsetList;->length:I

    iput v2, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan$OffsetList;->start:I

    return-void
.end method

.method public containsOffset(I)Z
    .locals 2

    .line 1111
    iget v0, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan$OffsetList;->start:I

    add-int/2addr v0, p1

    .line 1112
    iget-object p1, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan$OffsetList;->list:[I

    array-length v1, p1

    if-lt v0, v1, :cond_0

    .line 1113
    array-length p1, p1

    sub-int/2addr v0, p1

    .line 1115
    :cond_0
    iget-object p1, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan$OffsetList;->list:[I

    aget p1, p1, v0

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hasCountAtOffset(II)Z
    .locals 2

    .line 1122
    iget v0, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan$OffsetList;->start:I

    add-int/2addr v0, p1

    .line 1123
    iget-object p1, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan$OffsetList;->list:[I

    array-length v1, p1

    if-lt v0, v1, :cond_0

    .line 1124
    array-length p1, p1

    sub-int/2addr v0, p1

    .line 1126
    :cond_0
    iget-object p1, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan$OffsetList;->list:[I

    aget p1, p1, v0

    if-eqz p1, :cond_1

    if-gt p1, p2, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isEmpty()Z
    .locals 1

    .line 1052
    iget v0, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan$OffsetList;->length:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public popMinimum(Lcom/ibm/icu/util/OutputInt;)I
    .locals 5

    .line 1137
    iget v0, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan$OffsetList;->start:I

    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 1138
    iget-object v1, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan$OffsetList;->list:[I

    array-length v2, v1

    const/4 v3, 0x0

    if-ge v0, v2, :cond_2

    .line 1139
    aget v2, v1, v0

    if-eqz v2, :cond_0

    .line 1141
    aput v3, v1, v0

    .line 1142
    iget v1, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan$OffsetList;->length:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan$OffsetList;->length:I

    .line 1143
    iget v1, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan$OffsetList;->start:I

    sub-int v1, v0, v1

    .line 1144
    iput v0, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan$OffsetList;->start:I

    if-eqz p1, :cond_1

    .line 1145
    iput v2, p1, Lcom/ibm/icu/util/OutputInt;->value:I

    :cond_1
    return v1

    .line 1153
    :cond_2
    array-length v0, v1

    iget v1, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan$OffsetList;->start:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    .line 1156
    :goto_0
    iget-object v2, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan$OffsetList;->list:[I

    aget v4, v2, v1

    if-nez v4, :cond_3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1159
    :cond_3
    aput v3, v2, v1

    .line 1160
    iget v2, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan$OffsetList;->length:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan$OffsetList;->length:I

    .line 1161
    iput v1, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan$OffsetList;->start:I

    if-eqz p1, :cond_4

    .line 1162
    iput v4, p1, Lcom/ibm/icu/util/OutputInt;->value:I

    :cond_4
    add-int/2addr v0, v1

    return v0
.end method

.method public setMaxLength(I)V
    .locals 1

    .line 1038
    iget-object v0, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan$OffsetList;->list:[I

    array-length v0, v0

    if-le p1, v0, :cond_0

    .line 1039
    new-array p1, p1, [I

    iput-object p1, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan$OffsetList;->list:[I

    .line 1041
    :cond_0
    invoke-virtual {p0}, Lcom/ibm/icu/impl/UnicodeSetStringSpan$OffsetList;->clear()V

    return-void
.end method

.method public shift(I)V
    .locals 2

    .line 1063
    iget v0, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan$OffsetList;->start:I

    add-int/2addr v0, p1

    .line 1064
    iget-object p1, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan$OffsetList;->list:[I

    array-length v1, p1

    if-lt v0, v1, :cond_0

    .line 1065
    array-length p1, p1

    sub-int/2addr v0, p1

    .line 1067
    :cond_0
    iget-object p1, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan$OffsetList;->list:[I

    aget v1, p1, v0

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 1068
    aput v1, p1, v0

    .line 1069
    iget p1, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan$OffsetList;->length:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan$OffsetList;->length:I

    .line 1071
    :cond_1
    iput v0, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan$OffsetList;->start:I

    return-void
.end method
